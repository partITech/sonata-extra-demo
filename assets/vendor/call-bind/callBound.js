/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/call-bind@1.0.7/callBound.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
import t from"get-intrinsic";import r from"function-bind";import e from"set-function-length";import n from"es-errors/type";import o from"es-define-property";var p={exports:{}};!function(p){var i=r,f=t,m=e,a=n,s=f("%Function.prototype.apply%"),u=f("%Function.prototype.call%"),c=f("%Reflect.apply%",!0)||i.call(u,s),l=o,y=f("%Math.max%");p.exports=function(t){if("function"!=typeof t)throw new a("a function is required");var r=c(i,u,arguments);return m(r,1+y(0,t.length-(arguments.length-1)),!0)};var x=function(){return c(i,s,arguments)};l?l(p.exports,"apply",{value:x}):p.exports.apply=x}(p);var i=t,f=p.exports,m=f(i("String.prototype.indexOf")),a=function(t,r){var e=i(t,!!r);return"function"==typeof e&&m(t,".prototype.")>-1?f(e):e};export{a as default};
