<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm' => '@vendor/npm-asset',
    ],
    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'klaOIDjoi12ioohdq',
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
            ]
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'POST /api/login' => 'user/login',
                'OPTIONS /api/login' => 'user/options',
                'GET /api/info' => 'user/info',
                'OPTIONS /api/info' => 'user/options',
                'GET /api/change' => 'user/change',
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => ['user']
                ],
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => ['room'],
                    'prefix' => 'api/',
                    'extraPatterns' => [
                        'OPTIONS <id>/devices' => 'options',
                        'GET <id>/devices' => 'devices',
                    ]
                ],
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => ['device'],
                    'prefix' => 'api/',
                    'patterns' => [
                        'POST,PUT,PATCH {id}' => 'update',
                        'DELETE {id}' => 'delete',
                        'GET,HEAD {id}' => 'view',
                        'POST' => 'create',
                        'GET,HEAD' => 'index',
                        '{id}' => 'options',
                        '' => 'options',
                    ]
                ],
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => ['macro'],
                    'prefix' => 'api/',
                    'patterns' => [
                        'POST {id}' => 'delete',
                        'GET,HEAD {id}' => 'view',
                        'POST' => 'create',
                        'GET,HEAD' => 'index',
                        '{id}' => 'options',
                        '' => 'options',
                    ]
                ]
            ],
        ],
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
