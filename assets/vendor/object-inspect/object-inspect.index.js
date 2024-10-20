/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/object-inspect@1.13.1/index.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
function t(t,e){return e.forEach((function(e){e&&"string"!=typeof e&&!Array.isArray(e)&&Object.keys(e).forEach((function(r){if("default"!==r&&!(r in t)){var n=Object.getOwnPropertyDescriptor(e,r);Object.defineProperty(t,r,n.get?n:{enumerable:!0,get:function(){return e[r]}})}}))})),Object.freeze(t)}var e="undefined"!=typeof globalThis?globalThis:"undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:{};function r(t){if(t.__esModule)return t;var e=Object.defineProperty({},"__esModule",{value:!0});return Object.keys(t).forEach((function(r){var n=Object.getOwnPropertyDescriptor(t,r);Object.defineProperty(e,r,n.get?n:{enumerable:!0,get:function(){return t[r]}})})),e}var n={},o=r(t({__proto__:null,default:n},[n])),i="function"==typeof Map&&Map.prototype,u=Object.getOwnPropertyDescriptor&&i?Object.getOwnPropertyDescriptor(Map.prototype,"size"):null,c=i&&u&&"function"==typeof u.get?u.get:null,f=i&&Map.prototype.forEach,l="function"==typeof Set&&Set.prototype,a=Object.getOwnPropertyDescriptor&&l?Object.getOwnPropertyDescriptor(Set.prototype,"size"):null,p=l&&a&&"function"==typeof a.get?a.get:null,y=l&&Set.prototype.forEach,b="function"==typeof WeakMap&&WeakMap.prototype?WeakMap.prototype.has:null,g="function"==typeof WeakSet&&WeakSet.prototype?WeakSet.prototype.has:null,s="function"==typeof WeakRef&&WeakRef.prototype?WeakRef.prototype.deref:null,h=Boolean.prototype.valueOf,S=Object.prototype.toString,d=Function.prototype.toString,m=String.prototype.match,j=String.prototype.slice,v=String.prototype.replace,O=String.prototype.toUpperCase,w=String.prototype.toLowerCase,_=RegExp.prototype.test,x=Array.prototype.concat,E=Array.prototype.join,k=Array.prototype.slice,M=Math.floor,W="function"==typeof BigInt?BigInt.prototype.valueOf:null,P=Object.getOwnPropertySymbols,T="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?Symbol.prototype.toString:null,A="function"==typeof Symbol&&"object"==typeof Symbol.iterator,L="function"==typeof Symbol&&Symbol.toStringTag&&(typeof Symbol.toStringTag===A||"symbol")?Symbol.toStringTag:null,$=Object.prototype.propertyIsEnumerable,q=("function"==typeof Reflect?Reflect.getPrototypeOf:Object.getPrototypeOf)||([].__proto__===Array.prototype?function(t){return t.__proto__}:null);function I(t,e){if(t===1/0||t===-1/0||t!=t||t&&t>-1e3&&t<1e3||_.call(/e/,e))return e;var r=/[0-9](?=(?:[0-9]{3})+(?![0-9]))/g;if("number"==typeof t){var n=t<0?-M(-t):M(t);if(n!==t){var o=String(n),i=j.call(e,o.length+1);return v.call(o,r,"$&_")+"."+v.call(v.call(i,/([0-9]{3})/g,"$&_"),/_$/,"")}}return v.call(e,r,"$&_")}var N=o,R=N.custom,D=U(R)?R:null,B=function t(r,n,o,i){var u=n||{};if(J(u,"quoteStyle")&&"single"!==u.quoteStyle&&"double"!==u.quoteStyle)throw new TypeError('option "quoteStyle" must be "single" or "double"');if(J(u,"maxStringLength")&&("number"==typeof u.maxStringLength?u.maxStringLength<0&&u.maxStringLength!==1/0:null!==u.maxStringLength))throw new TypeError('option "maxStringLength", if provided, must be a positive integer, Infinity, or `null`');var l=!J(u,"customInspect")||u.customInspect;if("boolean"!=typeof l&&"symbol"!==l)throw new TypeError("option \"customInspect\", if provided, must be `true`, `false`, or `'symbol'`");if(J(u,"indent")&&null!==u.indent&&"\t"!==u.indent&&!(parseInt(u.indent,10)===u.indent&&u.indent>0))throw new TypeError('option "indent" must be "\\t", an integer > 0, or `null`');if(J(u,"numericSeparator")&&"boolean"!=typeof u.numericSeparator)throw new TypeError('option "numericSeparator", if provided, must be `true` or `false`');var a=u.numericSeparator;if(void 0===r)return"undefined";if(null===r)return"null";if("boolean"==typeof r)return r?"true":"false";if("string"==typeof r)return V(r,u);if("number"==typeof r){if(0===r)return 1/0/r>0?"0":"-0";var S=String(r);return a?I(r,S):S}if("bigint"==typeof r){var O=String(r)+"n";return a?I(r,O):O}var _=void 0===u.depth?5:u.depth;if(void 0===o&&(o=0),o>=_&&_>0&&"object"==typeof r)return F(r)?"[Array]":"[Object]";var M=function(t,e){var r;if("\t"===t.indent)r="\t";else{if(!("number"==typeof t.indent&&t.indent>0))return null;r=E.call(Array(t.indent+1)," ")}return{base:r,prev:E.call(Array(e+1),r)}}(u,o);if(void 0===i)i=[];else if(Q(i,r)>=0)return"[Circular]";function P(e,r,n){if(r&&(i=k.call(i)).push(r),n){var c={depth:u.depth};return J(u,"quoteStyle")&&(c.quoteStyle=u.quoteStyle),t(e,c,o+1,i)}return t(e,u,o+1,i)}if("function"==typeof r&&!H(r)){var R=function(t){if(t.name)return t.name;var e=m.call(d.call(t),/^function\s*([\w$]+)/);if(e)return e[1];return null}(r),B=rt(r,P);return"[Function"+(R?": "+R:" (anonymous)")+"]"+(B.length>0?" { "+E.call(B,", ")+" }":"")}if(U(r)){var G=A?v.call(String(r),/^(Symbol\(.*\))_[^)]*$/,"$1"):T.call(r);return"object"!=typeof r||A?G:Y(G)}if(function(t){if(!t||"object"!=typeof t)return!1;if("undefined"!=typeof HTMLElement&&t instanceof HTMLElement)return!0;return"string"==typeof t.nodeName&&"function"==typeof t.getAttribute}(r)){for(var X="<"+w.call(String(r.nodeName)),nt=r.attributes||[],ot=0;ot<nt.length;ot++)X+=" "+nt[ot].name+"="+C(z(nt[ot].value),"double",u);return X+=">",r.childNodes&&r.childNodes.length&&(X+="..."),X+="</"+w.call(String(r.nodeName))+">"}if(F(r)){if(0===r.length)return"[]";var it=rt(r,P);return M&&!function(t){for(var e=0;e<t.length;e++)if(Q(t[e],"\n")>=0)return!1;return!0}(it)?"["+et(it,M)+"]":"[ "+E.call(it,", ")+" ]"}if(function(t){return!("[object Error]"!==K(t)||L&&"object"==typeof t&&L in t)}(r)){var ut=rt(r,P);return"cause"in Error.prototype||!("cause"in r)||$.call(r,"cause")?0===ut.length?"["+String(r)+"]":"{ ["+String(r)+"] "+E.call(ut,", ")+" }":"{ ["+String(r)+"] "+E.call(x.call("[cause]: "+P(r.cause),ut),", ")+" }"}if("object"==typeof r&&l){if(D&&"function"==typeof r[D]&&N)return N(r,{depth:_-o});if("symbol"!==l&&"function"==typeof r.inspect)return r.inspect()}if(function(t){if(!c||!t||"object"!=typeof t)return!1;try{c.call(t);try{p.call(t)}catch(t){return!0}return t instanceof Map}catch(t){}return!1}(r)){var ct=[];return f&&f.call(r,(function(t,e){ct.push(P(e,r,!0)+" => "+P(t,r))})),tt("Map",c.call(r),ct,M)}if(function(t){if(!p||!t||"object"!=typeof t)return!1;try{p.call(t);try{c.call(t)}catch(t){return!0}return t instanceof Set}catch(t){}return!1}(r)){var ft=[];return y&&y.call(r,(function(t){ft.push(P(t,r))})),tt("Set",p.call(r),ft,M)}if(function(t){if(!b||!t||"object"!=typeof t)return!1;try{b.call(t,b);try{g.call(t,g)}catch(t){return!0}return t instanceof WeakMap}catch(t){}return!1}(r))return Z("WeakMap");if(function(t){if(!g||!t||"object"!=typeof t)return!1;try{g.call(t,g);try{b.call(t,b)}catch(t){return!0}return t instanceof WeakSet}catch(t){}return!1}(r))return Z("WeakSet");if(function(t){if(!s||!t||"object"!=typeof t)return!1;try{return s.call(t),!0}catch(t){}return!1}(r))return Z("WeakRef");if(function(t){return!("[object Number]"!==K(t)||L&&"object"==typeof t&&L in t)}(r))return Y(P(Number(r)));if(function(t){if(!t||"object"!=typeof t||!W)return!1;try{return W.call(t),!0}catch(t){}return!1}(r))return Y(P(W.call(r)));if(function(t){return!("[object Boolean]"!==K(t)||L&&"object"==typeof t&&L in t)}(r))return Y(h.call(r));if(function(t){return!("[object String]"!==K(t)||L&&"object"==typeof t&&L in t)}(r))return Y(P(String(r)));if("undefined"!=typeof window&&r===window)return"{ [object Window] }";if(r===e)return"{ [object globalThis] }";if(!function(t){return!("[object Date]"!==K(t)||L&&"object"==typeof t&&L in t)}(r)&&!H(r)){var lt=rt(r,P),at=q?q(r)===Object.prototype:r instanceof Object||r.constructor===Object,pt=r instanceof Object?"":"null prototype",yt=!at&&L&&Object(r)===r&&L in r?j.call(K(r),8,-1):pt?"Object":"",bt=(at||"function"!=typeof r.constructor?"":r.constructor.name?r.constructor.name+" ":"")+(yt||pt?"["+E.call(x.call([],yt||[],pt||[]),": ")+"] ":"");return 0===lt.length?bt+"{}":M?bt+"{"+et(lt,M)+"}":bt+"{ "+E.call(lt,", ")+" }"}return String(r)};function C(t,e,r){var n="double"===(r.quoteStyle||e)?'"':"'";return n+t+n}function z(t){return v.call(String(t),/"/g,"&quot;")}function F(t){return!("[object Array]"!==K(t)||L&&"object"==typeof t&&L in t)}function H(t){return!("[object RegExp]"!==K(t)||L&&"object"==typeof t&&L in t)}function U(t){if(A)return t&&"object"==typeof t&&t instanceof Symbol;if("symbol"==typeof t)return!0;if(!t||"object"!=typeof t||!T)return!1;try{return T.call(t),!0}catch(t){}return!1}var G=Object.prototype.hasOwnProperty||function(t){return t in this};function J(t,e){return G.call(t,e)}function K(t){return S.call(t)}function Q(t,e){if(t.indexOf)return t.indexOf(e);for(var r=0,n=t.length;r<n;r++)if(t[r]===e)return r;return-1}function V(t,e){if(t.length>e.maxStringLength){var r=t.length-e.maxStringLength,n="... "+r+" more character"+(r>1?"s":"");return V(j.call(t,0,e.maxStringLength),e)+n}return C(v.call(v.call(t,/(['\\])/g,"\\$1"),/[\x00-\x1f]/g,X),"single",e)}function X(t){var e=t.charCodeAt(0),r={8:"b",9:"t",10:"n",12:"f",13:"r"}[e];return r?"\\"+r:"\\x"+(e<16?"0":"")+O.call(e.toString(16))}function Y(t){return"Object("+t+")"}function Z(t){return t+" { ? }"}function tt(t,e,r,n){return t+" ("+e+") {"+(n?et(r,n):E.call(r,", "))+"}"}function et(t,e){if(0===t.length)return"";var r="\n"+e.prev+e.base;return r+E.call(t,","+r)+"\n"+e.prev}function rt(t,e){var r=F(t),n=[];if(r){n.length=t.length;for(var o=0;o<t.length;o++)n[o]=J(t,o)?e(t[o],t):""}var i,u="function"==typeof P?P(t):[];if(A){i={};for(var c=0;c<u.length;c++)i["$"+u[c]]=u[c]}for(var f in t)J(t,f)&&(r&&String(Number(f))===f&&f<t.length||A&&i["$"+f]instanceof Symbol||(_.call(/[^\w$]/,f)?n.push(e(f,t)+": "+e(t[f],t)):n.push(f+": "+e(t[f],t))));if("function"==typeof P)for(var l=0;l<u.length;l++)$.call(t,u[l])&&n.push("["+e(u[l])+"]: "+e(t[u[l]],t));return n}export{B as default};