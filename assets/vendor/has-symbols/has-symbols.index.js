/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/has-symbols@1.0.3/index.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
var t="undefined"!=typeof Symbol&&Symbol,e=function(){if("function"!=typeof Symbol||"function"!=typeof Object.getOwnPropertySymbols)return!1;if("symbol"==typeof Symbol.iterator)return!0;var t={},e=Symbol("test"),r=Object(e);if("string"==typeof e)return!1;if("[object Symbol]"!==Object.prototype.toString.call(e))return!1;if("[object Symbol]"!==Object.prototype.toString.call(r))return!1;for(e in t[e]=42,t)return!1;if("function"==typeof Object.keys&&0!==Object.keys(t).length)return!1;if("function"==typeof Object.getOwnPropertyNames&&0!==Object.getOwnPropertyNames(t).length)return!1;var o=Object.getOwnPropertySymbols(t);if(1!==o.length||o[0]!==e)return!1;if(!Object.prototype.propertyIsEnumerable.call(t,e))return!1;if("function"==typeof Object.getOwnPropertyDescriptor){var n=Object.getOwnPropertyDescriptor(t,e);if(42!==n.value||!0!==n.enumerable)return!1}return!0},r=function(){return"function"==typeof t&&("function"==typeof Symbol&&("symbol"==typeof t("foo")&&("symbol"==typeof Symbol("bar")&&e())))};export{r as default};
