<?php

/**
 * Returns the importmap for this application.
 *
 * - "path" is a path inside the asset mapper system. Use the
 *     "debug:asset-map" command to see the full list of paths.
 *
 * - "entrypoint" (JavaScript only) set to true for any module that will
 *     be used as an "entrypoint" (and passed to the importmap() Twig function).
 *
 * The "importmap:require" command can be used to add new entries to this file.
 */
return [
    'app' => [
        'path' => './assets/app.js',
        'entrypoint' => true,
    ],
    'admin' => [
        'path' => './assets/admin.js',
        'entrypoint' => true,
    ],
    '@symfony/stimulus-bundle' => [
        'path' => './vendor/symfony/stimulus-bundle/assets/dist/loader.js',
    ],
    '@symfony/ux-live-component' => [
        'path' => './vendor/symfony/ux-live-component/assets/dist/live_controller.js',
    ],
    '@hotwired/stimulus' => [
        'version' => '3.2.2',
    ],
    'bootstrap/js/dist/alert' => [
        'version' => '5.3.3',
    ],
    'bootstrap/dist/css/bootstrap.min.css' => [
        'version' => '5.3.3',
        'type' => 'css',
    ],
    'jquery' => [
        'version' => '3.7.1',
    ],
    'highlight.js/lib/core' => [
        'version' => '11.10.0',
    ],
    'highlight.js/lib/languages/php' => [
        'version' => '11.10.0',
    ],
    'highlight.js/lib/languages/twig' => [
        'version' => '11.10.0',
    ],
    'flatpickr' => [
        'version' => '4.6.13',
    ],
    'flatpickr/dist/l10n' => [
        'version' => '4.6.13',
    ],
    'flatpickr/dist/flatpickr.min.css' => [
        'version' => '4.6.13',
        'type' => 'css',
    ],
    'bootstrap/js/dist/collapse' => [
        'version' => '5.3.3',
    ],
    'bootstrap/js/dist/dropdown' => [
        'version' => '5.3.3',
    ],
    'bootstrap/js/dist/tab' => [
        'version' => '5.3.3',
    ],
    'bootstrap/js/dist/modal' => [
        'version' => '5.3.3',
    ],
    'highlight.js/styles/github-dark-dimmed.css' => [
        'version' => '11.10.0',
        'type' => 'css',
    ],
    'lato-font/css/lato-font.css' => [
        'version' => '3.0.0',
        'type' => 'css',
    ],
    'popper.js' => [
        'version' => '1.16.1',
    ],
    'typeahead.js' => [
        'version' => '0.11.1',
    ],
    'bloodhound-js' => [
        'version' => '1.2.3',
    ],
    'object-assign' => [
        'version' => '4.1.1',
    ],
    'es6-promise' => [
        'version' => '4.2.8',
    ],
    'storage2' => [
        'version' => '0.1.2',
    ],
    'superagent' => [
        'version' => '10.1.0',
    ],
    'component-emitter' => [
        'version' => '2.0.0',
    ],
    'bootstrap-tagsinput' => [
        'version' => '0.7.1',
    ],
    '@popperjs/core' => [
        'version' => '2.11.8',
    ],
    'fast-safe-stringify' => [
        'version' => '2.1.1',
    ],
    'qs' => [
        'version' => '6.13.0',
    ],
    'side-channel' => [
        'version' => '1.0.6',
    ],
    'get-intrinsic' => [
        'version' => '1.2.4',
    ],
    'call-bind/callBound' => [
        'version' => '1.0.7',
    ],
    'object-inspect' => [
        'version' => '1.13.1',
    ],
    'es-errors/type' => [
        'version' => '1.3.0',
    ],
    'es-errors' => [
        'version' => '1.3.0',
    ],
    'es-errors/eval' => [
        'version' => '1.3.0',
    ],
    'es-errors/range' => [
        'version' => '1.3.0',
    ],
    'es-errors/ref' => [
        'version' => '1.3.0',
    ],
    'es-errors/syntax' => [
        'version' => '1.3.0',
    ],
    'es-errors/uri' => [
        'version' => '1.3.0',
    ],
    'has-symbols' => [
        'version' => '1.0.3',
    ],
    'has-proto' => [
        'version' => '1.0.1',
    ],
    'function-bind' => [
        'version' => '1.1.2',
    ],
    'hasown' => [
        'version' => '2.0.0',
    ],
    'set-function-length' => [
        'version' => '1.2.1',
    ],
    'es-define-property' => [
        'version' => '1.0.0',
    ],
    'define-data-property' => [
        'version' => '1.1.2',
    ],
    'has-property-descriptors' => [
        'version' => '1.0.1',
    ],
    'gopd' => [
        'version' => '1.0.1',
    ],
];
