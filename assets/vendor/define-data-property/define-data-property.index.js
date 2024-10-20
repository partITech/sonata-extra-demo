/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/define-data-property@1.1.2/index.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
import e from"has-property-descriptors";import o from"get-intrinsic";import n from"es-errors/syntax";import r from"es-errors/type";import t from"gopd";var l=e()&&o("%Object.defineProperty%",!0);if(l)try{l({},"a",{value:1})}catch(e){l=!1}var i=n,a=r,f=t,p=function(e,o,n){if(!e||"object"!=typeof e&&"function"!=typeof e)throw new a("`obj` must be an object or a function`");if("string"!=typeof o&&"symbol"!=typeof o)throw new a("`property` must be a string or a symbol`");if(arguments.length>3&&"boolean"!=typeof arguments[3]&&null!==arguments[3])throw new a("`nonEnumerable`, if provided, must be a boolean or null");if(arguments.length>4&&"boolean"!=typeof arguments[4]&&null!==arguments[4])throw new a("`nonWritable`, if provided, must be a boolean or null");if(arguments.length>5&&"boolean"!=typeof arguments[5]&&null!==arguments[5])throw new a("`nonConfigurable`, if provided, must be a boolean or null");if(arguments.length>6&&"boolean"!=typeof arguments[6])throw new a("`loose`, if provided, must be a boolean");var r=arguments.length>3?arguments[3]:null,t=arguments.length>4?arguments[4]:null,p=arguments.length>5?arguments[5]:null,m=arguments.length>6&&arguments[6],u=!!f&&f(e,o);if(l)l(e,o,{configurable:null===p&&u?u.configurable:!p,enumerable:null===r&&u?u.enumerable:!r,value:n,writable:null===t&&u?u.writable:!t});else{if(!m&&(r||t||p))throw new i("This environment does not support defining a property as non-configurable, non-writable, or non-enumerable.");e[o]=n}};export{p as default};