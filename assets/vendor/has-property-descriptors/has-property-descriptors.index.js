/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/has-property-descriptors@1.0.1/index.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
import r from"get-intrinsic";var e=r("%Object.defineProperty%",!0),t=function(){if(e)try{return e({},"a",{value:1}),!0}catch(r){return!1}return!1};t.hasArrayLengthDefineBug=function(){if(!t())return null;try{return 1!==e([],"length",{value:1}).length}catch(r){return!0}};var n=t,u=n.hasArrayLengthDefineBug;export{n as default,u as hasArrayLengthDefineBug};
