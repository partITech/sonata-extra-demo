/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/get-intrinsic@1.2.4/index.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
import r from"es-errors";import t from"es-errors/eval";import e from"es-errors/range";import o from"es-errors/ref";import n from"es-errors/syntax";import a from"es-errors/type";import y from"es-errors/uri";import p from"has-symbols";import i from"has-proto";import f from"function-bind";import s from"hasown";var c,l=r,u=t,A=e,m=o,d=n,P=a,g=y,S=Function,h=function(r){try{return S('"use strict"; return ('+r+").constructor;")()}catch(r){}},I=Object.getOwnPropertyDescriptor;if(I)try{I({},"")}catch(r){I=null}var F=function(){throw new P},b=I?function(){try{return F}catch(r){try{return I(arguments,"callee").get}catch(r){return F}}}():F,E=p(),U=i(),v=Object.getPrototypeOf||(U?function(r){return r.__proto__}:null),w={},R="undefined"!=typeof Uint8Array&&v?v(Uint8Array):c,B={__proto__:null,"%AggregateError%":"undefined"==typeof AggregateError?c:AggregateError,"%Array%":Array,"%ArrayBuffer%":"undefined"==typeof ArrayBuffer?c:ArrayBuffer,"%ArrayIteratorPrototype%":E&&v?v([][Symbol.iterator]()):c,"%AsyncFromSyncIteratorPrototype%":c,"%AsyncFunction%":w,"%AsyncGenerator%":w,"%AsyncGeneratorFunction%":w,"%AsyncIteratorPrototype%":w,"%Atomics%":"undefined"==typeof Atomics?c:Atomics,"%BigInt%":"undefined"==typeof BigInt?c:BigInt,"%BigInt64Array%":"undefined"==typeof BigInt64Array?c:BigInt64Array,"%BigUint64Array%":"undefined"==typeof BigUint64Array?c:BigUint64Array,"%Boolean%":Boolean,"%DataView%":"undefined"==typeof DataView?c:DataView,"%Date%":Date,"%decodeURI%":decodeURI,"%decodeURIComponent%":decodeURIComponent,"%encodeURI%":encodeURI,"%encodeURIComponent%":encodeURIComponent,"%Error%":l,"%eval%":eval,"%EvalError%":u,"%Float32Array%":"undefined"==typeof Float32Array?c:Float32Array,"%Float64Array%":"undefined"==typeof Float64Array?c:Float64Array,"%FinalizationRegistry%":"undefined"==typeof FinalizationRegistry?c:FinalizationRegistry,"%Function%":S,"%GeneratorFunction%":w,"%Int8Array%":"undefined"==typeof Int8Array?c:Int8Array,"%Int16Array%":"undefined"==typeof Int16Array?c:Int16Array,"%Int32Array%":"undefined"==typeof Int32Array?c:Int32Array,"%isFinite%":isFinite,"%isNaN%":isNaN,"%IteratorPrototype%":E&&v?v(v([][Symbol.iterator]())):c,"%JSON%":"object"==typeof JSON?JSON:c,"%Map%":"undefined"==typeof Map?c:Map,"%MapIteratorPrototype%":"undefined"!=typeof Map&&E&&v?v((new Map)[Symbol.iterator]()):c,"%Math%":Math,"%Number%":Number,"%Object%":Object,"%parseFloat%":parseFloat,"%parseInt%":parseInt,"%Promise%":"undefined"==typeof Promise?c:Promise,"%Proxy%":"undefined"==typeof Proxy?c:Proxy,"%RangeError%":A,"%ReferenceError%":m,"%Reflect%":"undefined"==typeof Reflect?c:Reflect,"%RegExp%":RegExp,"%Set%":"undefined"==typeof Set?c:Set,"%SetIteratorPrototype%":"undefined"!=typeof Set&&E&&v?v((new Set)[Symbol.iterator]()):c,"%SharedArrayBuffer%":"undefined"==typeof SharedArrayBuffer?c:SharedArrayBuffer,"%String%":String,"%StringIteratorPrototype%":E&&v?v(""[Symbol.iterator]()):c,"%Symbol%":E?Symbol:c,"%SyntaxError%":d,"%ThrowTypeError%":b,"%TypedArray%":R,"%TypeError%":P,"%Uint8Array%":"undefined"==typeof Uint8Array?c:Uint8Array,"%Uint8ClampedArray%":"undefined"==typeof Uint8ClampedArray?c:Uint8ClampedArray,"%Uint16Array%":"undefined"==typeof Uint16Array?c:Uint16Array,"%Uint32Array%":"undefined"==typeof Uint32Array?c:Uint32Array,"%URIError%":g,"%WeakMap%":"undefined"==typeof WeakMap?c:WeakMap,"%WeakRef%":"undefined"==typeof WeakRef?c:WeakRef,"%WeakSet%":"undefined"==typeof WeakSet?c:WeakSet};if(v)try{null.error}catch(r){var _=v(v(r));B["%Error.prototype%"]=_}var x=function r(t){var e;if("%AsyncFunction%"===t)e=h("async function () {}");else if("%GeneratorFunction%"===t)e=h("function* () {}");else if("%AsyncGeneratorFunction%"===t)e=h("async function* () {}");else if("%AsyncGenerator%"===t){var o=r("%AsyncGeneratorFunction%");o&&(e=o.prototype)}else if("%AsyncIteratorPrototype%"===t){var n=r("%AsyncGenerator%");n&&v&&(e=v(n.prototype))}return B[t]=e,e},O={__proto__:null,"%ArrayBufferPrototype%":["ArrayBuffer","prototype"],"%ArrayPrototype%":["Array","prototype"],"%ArrayProto_entries%":["Array","prototype","entries"],"%ArrayProto_forEach%":["Array","prototype","forEach"],"%ArrayProto_keys%":["Array","prototype","keys"],"%ArrayProto_values%":["Array","prototype","values"],"%AsyncFunctionPrototype%":["AsyncFunction","prototype"],"%AsyncGenerator%":["AsyncGeneratorFunction","prototype"],"%AsyncGeneratorPrototype%":["AsyncGeneratorFunction","prototype","prototype"],"%BooleanPrototype%":["Boolean","prototype"],"%DataViewPrototype%":["DataView","prototype"],"%DatePrototype%":["Date","prototype"],"%ErrorPrototype%":["Error","prototype"],"%EvalErrorPrototype%":["EvalError","prototype"],"%Float32ArrayPrototype%":["Float32Array","prototype"],"%Float64ArrayPrototype%":["Float64Array","prototype"],"%FunctionPrototype%":["Function","prototype"],"%Generator%":["GeneratorFunction","prototype"],"%GeneratorPrototype%":["GeneratorFunction","prototype","prototype"],"%Int8ArrayPrototype%":["Int8Array","prototype"],"%Int16ArrayPrototype%":["Int16Array","prototype"],"%Int32ArrayPrototype%":["Int32Array","prototype"],"%JSONParse%":["JSON","parse"],"%JSONStringify%":["JSON","stringify"],"%MapPrototype%":["Map","prototype"],"%NumberPrototype%":["Number","prototype"],"%ObjectPrototype%":["Object","prototype"],"%ObjProto_toString%":["Object","prototype","toString"],"%ObjProto_valueOf%":["Object","prototype","valueOf"],"%PromisePrototype%":["Promise","prototype"],"%PromiseProto_then%":["Promise","prototype","then"],"%Promise_all%":["Promise","all"],"%Promise_reject%":["Promise","reject"],"%Promise_resolve%":["Promise","resolve"],"%RangeErrorPrototype%":["RangeError","prototype"],"%ReferenceErrorPrototype%":["ReferenceError","prototype"],"%RegExpPrototype%":["RegExp","prototype"],"%SetPrototype%":["Set","prototype"],"%SharedArrayBufferPrototype%":["SharedArrayBuffer","prototype"],"%StringPrototype%":["String","prototype"],"%SymbolPrototype%":["Symbol","prototype"],"%SyntaxErrorPrototype%":["SyntaxError","prototype"],"%TypedArrayPrototype%":["TypedArray","prototype"],"%TypeErrorPrototype%":["TypeError","prototype"],"%Uint8ArrayPrototype%":["Uint8Array","prototype"],"%Uint8ClampedArrayPrototype%":["Uint8ClampedArray","prototype"],"%Uint16ArrayPrototype%":["Uint16Array","prototype"],"%Uint32ArrayPrototype%":["Uint32Array","prototype"],"%URIErrorPrototype%":["URIError","prototype"],"%WeakMapPrototype%":["WeakMap","prototype"],"%WeakSetPrototype%":["WeakSet","prototype"]},G=f,M=s,k=G.call(Function.call,Array.prototype.concat),N=G.call(Function.apply,Array.prototype.splice),j=G.call(Function.call,String.prototype.replace),W=G.call(Function.call,String.prototype.slice),D=G.call(Function.call,RegExp.prototype.exec),C=/[^%.[\]]+|\[(?:(-?\d+(?:\.\d+)?)|(["'])((?:(?!\2)[^\\]|\\.)*?)\2)\]|(?=(?:\.|\[\])(?:\.|\[\]|%$))/g,T=/\\(\\)?/g,J=function(r,t){var e,o=r;if(M(O,o)&&(o="%"+(e=O[o])[0]+"%"),M(B,o)){var n=B[o];if(n===w&&(n=x(o)),void 0===n&&!t)throw new P("intrinsic "+r+" exists, but is not available. Please file an issue!");return{alias:e,name:o,value:n}}throw new d("intrinsic "+r+" does not exist!")},V=function(r,t){if("string"!=typeof r||0===r.length)throw new P("intrinsic name must be a non-empty string");if(arguments.length>1&&"boolean"!=typeof t)throw new P('"allowMissing" argument must be a boolean');if(null===D(/^%?[^%]*%?$/,r))throw new d("`%` may not be present anywhere but at the beginning and end of the intrinsic name");var e=function(r){var t=W(r,0,1),e=W(r,-1);if("%"===t&&"%"!==e)throw new d("invalid intrinsic syntax, expected closing `%`");if("%"===e&&"%"!==t)throw new d("invalid intrinsic syntax, expected opening `%`");var o=[];return j(r,C,(function(r,t,e,n){o[o.length]=e?j(n,T,"$1"):t||r})),o}(r),o=e.length>0?e[0]:"",n=J("%"+o+"%",t),a=n.name,y=n.value,p=!1,i=n.alias;i&&(o=i[0],N(e,k([0,1],i)));for(var f=1,s=!0;f<e.length;f+=1){var c=e[f],l=W(c,0,1),u=W(c,-1);if(('"'===l||"'"===l||"`"===l||'"'===u||"'"===u||"`"===u)&&l!==u)throw new d("property names with quotes must have matching quotes");if("constructor"!==c&&s||(p=!0),M(B,a="%"+(o+="."+c)+"%"))y=B[a];else if(null!=y){if(!(c in y)){if(!t)throw new P("base intrinsic for "+r+" exists, but the property is not available.");return}if(I&&f+1>=e.length){var A=I(y,c);y=(s=!!A)&&"get"in A&&!("originalValue"in A.get)?A.get:y[c]}else s=M(y,c),y=y[c];s&&!p&&(B[a]=y)}}return y};export{V as default};
