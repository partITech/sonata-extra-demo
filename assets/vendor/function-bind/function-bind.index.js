/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/function-bind@1.1.2/index.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
var t=Object.prototype.toString,n=Math.max,r=function(t,n){for(var r=[],o=0;o<t.length;o+=1)r[o]=t[o];for(var e=0;e<n.length;e+=1)r[e+t.length]=n[e];return r},o=function(o){var e=this;if("function"!=typeof e||"[object Function]"!==t.apply(e))throw new TypeError("Function.prototype.bind called on incompatible "+e);for(var i,p=function(t,n){for(var r=[],o=n||0,e=0;o<t.length;o+=1,e+=1)r[e]=t[o];return r}(arguments,1),u=n(0,e.length-p.length),a=[],f=0;f<u;f++)a[f]="$"+f;if(i=Function("binder","return function ("+function(t,n){for(var r="",o=0;o<t.length;o+=1)r+=t[o],o+1<t.length&&(r+=n);return r}(a,",")+"){ return binder.apply(this,arguments); }")((function(){if(this instanceof i){var t=e.apply(this,r(p,arguments));return Object(t)===t?t:this}return e.apply(o,r(p,arguments))})),e.prototype){var c=function(){};c.prototype=e.prototype,i.prototype=new c,c.prototype=null}return i},e=Function.prototype.bind||o;export{e as default};
