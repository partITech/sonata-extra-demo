/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/set-function-length@1.2.1/index.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
import t from"get-intrinsic";import e from"define-data-property";import r from"has-property-descriptors";import n from"gopd";import o from"es-errors/type";var i=t,m=e,p=r(),f=n,s=o,a=i("%Math.floor%"),g=function(t,e){if("function"!=typeof t)throw new s("`fn` is not a function");if("number"!=typeof e||e<0||e>4294967295||a(e)!==e)throw new s("`length` must be a positive 32-bit integer");var r=arguments.length>2&&!!arguments[2],n=!0,o=!0;if("length"in t&&f){var i=f(t,"length");i&&!i.configurable&&(n=!1),i&&!i.writable&&(o=!1)}return(n||o||!r)&&(p?m(t,"length",e,!0,!0):m(t,"length",e)),t};export{g as default};
