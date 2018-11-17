// 'Authorization': 'Bearer'
const API = 'http://wsr.ru/smart-home/api';
const $ = el => document.querySelector(el);
const $$ = el => document.querySelectorAll(el);

const f = (url, method) => fetch(API + url, {
    method: method,
    headers: {
        'Authorization': `Bearer ${window.localStorage.getItem('token')}`
    }
}).then(res => res.json());

let vue = new Vue({
    el: '#app',
    data: {
        curTab: 'login',
        navigation: 'Logout',
        token: '',
        rooms: [],
        curRoom: {},
        devices: [],
        type_image: {
            3: 'bra.png',
            4: 'cornice.jpg',
            2: 'light.png',
            6: 'thermostat.png',
            5: 'temp.png',
            1: 'lock.jpg',
        },
        auth: {
            login: '',
            password: '',
            token: '',
            invalidLoginForm: false,
            errors: {
                login: '',
                password: ''
            }
        },
        macros: [],
        macrosDevices: [],
    },
    methods: {
        login() {
            fetch(API + `/login`, {
                method: 'POST',
                body: JSON.stringify(
                    {
                        "login": this.auth.login,
                        "password": this.auth.password
                    }
                )
            })
                .then(res => res.json())
                .then(res => {
                    if (res.errors) {
                        this.auth.invalidLoginForm = true;
                        this.auth.errors.login = '';
                        this.auth.errors.password = '';
                        if (res.errors.login)
                            this.auth.errors.login = res.errors.login[0];
                        if (res.errors.password)
                            this.auth.errors.password = res.errors.password[0];
                    }

                    if (res.token) {
                        this.auth.token = res.token;
                        this.curTab = 'home';
                        window.localStorage.setItem('token', this.auth.token);
                        this.getRooms();
                    }
                })
        },
        getRooms() {
            fetch(API + '/rooms', {
                method: 'get',
                headers: {
                    'Authorization': `Bearer ${this.auth.token}`
                }
            })
                .then(res => res.json())
                .then(res => {
                   this.rooms = res;
                });
        },
        logout() {
            this.auth.token = '';
            window.localStorage.removeItem('token');
            this.curTab = 'login';
        },
        back() {
            if (this.curTab === 'home') this.logout();
            if (this.curTab === 'room' || this.curTab === 'devices' || this.curTab === 'macros') {
                this.curTab = 'home';
                this.navigation = 'Logout';
            }
        },
        home() {
            this.curTab = 'home';
            this.navigation = 'Logout';
        },
        getRoom(id) {
            fetch(API + `/rooms/${id}`, {
                method: 'get',
                headers: {
                    'Authorization': `Bearer ${this.auth.token}`
                }
            })
                .then(res => res.json())
                .then(res => {
                    this.curTab = 'room';
                    this.navigation = 'Home';
                    this.curRoom = res;
                    this.getDevicesByRoomId(res.id);
                });
        },

        getDevicesByRoomId(id) {
            fetch(API + `/rooms/${id}/devices`, {
                method: 'get',
                headers: {
                    'Authorization': `Bearer ${this.auth.token}`
                },
            })
                .then(res => res.json())
                .then(res => {
                    this.devices = res;
                    this.checkStatusDevices();
                })
        },

        changeStateDevice(device_id) {
            let select_device = this.devices.find(el => {
               return el.id === device_id;
            });

            if (select_device.type_id === 5) return;

            let change_status = '';

            if (select_device.value === 'open')
                change_status = 'close';

            if (select_device.value === 'close')
                change_status = 'open';

            if (select_device.value === 'on')
                change_status = 'off';

            if (select_device.value === 'off')
                change_status = 'on';

            fetch(API + `/devices/${device_id}`, {
                method: 'PATCH',
                headers: {
                    'Authorization': `Bearer ${this.auth.token}`
                },
                body: JSON.stringify(
                    {
                        value: change_status
                    }
                )
            })
                .then(res => res.json())
                .then(res => {
                    select_device.value = change_status;
                })
                .catch(error => {
                    alert('CONNETCTION LOST');
                })
        },

        checkStatusDevices() {
            setInterval(_ => {
                if (this.devices.length === 0) return;

                this.devices.forEach(el => {
                    fetch(API + `/devices/${el.id}`, {
                        method: 'get',
                        headers: {
                            'Authorization': `Bearer ${this.auth.token}`
                        },
                    })
                        .then(res => res.json())
                        .then(res => {
                            if (el.value !== res.value) el.value = res.value;
                        });
                });
            }, 1000);
        },

        devicesTab() {
            this.curTab = 'devices';
            this.navigation = 'Home';

            this.devices = [];

            this.rooms.forEach(el => {
                f(`/rooms/${el.id}/devices`)
                    .then(res => {
                        res.forEach(el => {
                            this.devices.push(el);
                        });
                    });
            });
            this.checkStatusDevices();
        },

        macrosPage() {
            this.curTab = 'macros';
            this.navigation = 'Home';

            f(`/macros`, 'get')
                .then(res => {
                    this.macros = res;

                    this.macros.forEach(el => {
                        el.devices.forEach(device => {
                            f(`/devices/${device.device_id}`, 'get')
                                .then(res => {
                                    this.macrosDevices.push(res);
                                });
                        });
                    });
                });
        },

        runMacros(macros_id) {
            f(`/macros/${macros_id}`, 'get')
                .then(res => {
                    // console.log(res);
                });
        },

        deleteMacros(macros_id) {
            f(`/macros/${macros_id}`, 'delete')
                .then(res => {
                    if (res.success) {
                        let remove_macros = this.macros.find(el => {
                            return el.id === macros_id;
                        });
                        this.macros.splice(this.macros.indexOf(remove_macros), 1);
                    }
                })
        }

    },
    created: function() {
        if (window.localStorage.getItem('token')) {
            this.auth.token = window.localStorage.getItem('token');
            this.getRooms();
            this.curTab = 'home';
        }
    }

});