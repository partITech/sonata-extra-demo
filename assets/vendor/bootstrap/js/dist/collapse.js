/**
 * Bundled by jsDelivr using Rollup v2.79.1 and Terser v5.19.2.
 * Original file: /npm/bootstrap@5.3.3/js/dist/collapse.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
"undefined"!=typeof globalThis?globalThis:"undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self&&self;var e={exports:{}},t={exports:{}},n={exports:{}};n.exports=function(){const e=new Map,t={set(t,n,r){e.has(t)||e.set(t,new Map);const o=e.get(t);o.has(n)||0===o.size?o.set(n,r):console.error(`Bootstrap doesn't allow more than one instance per element. Bound instance: ${Array.from(o.keys())[0]}.`)},get:(t,n)=>e.has(t)&&e.get(t).get(n)||null,remove(t,n){if(!e.has(t))return;const r=e.get(t);r.delete(n),0===r.size&&e.delete(t)}};return t}();var r={exports:{}},o={exports:{}};!function(e){const t=1e6,n=1e3,r="transitionend",o=e=>(e&&window.CSS&&window.CSS.escape&&(e=e.replace(/#([^\s"#']+)/g,((e,t)=>`#${CSS.escape(t)}`))),e),s=e=>null==e?`${e}`:Object.prototype.toString.call(e).match(/\s([a-z]+)/i)[1].toLowerCase(),i=e=>{do{e+=Math.floor(Math.random()*t)}while(document.getElementById(e));return e},l=e=>{if(!e)return 0;let{transitionDuration:t,transitionDelay:r}=window.getComputedStyle(e);const o=Number.parseFloat(t),s=Number.parseFloat(r);return o||s?(t=t.split(",")[0],r=r.split(",")[0],(Number.parseFloat(t)+Number.parseFloat(r))*n):0},a=e=>{e.dispatchEvent(new Event(r))},c=e=>!(!e||"object"!=typeof e)&&(void 0!==e.jquery&&(e=e[0]),void 0!==e.nodeType),u=e=>c(e)?e.jquery?e[0]:e:"string"==typeof e&&e.length>0?document.querySelector(o(e)):null,f=e=>{if(!c(e)||0===e.getClientRects().length)return!1;const t="visible"===getComputedStyle(e).getPropertyValue("visibility"),n=e.closest("details:not([open])");if(!n)return t;if(n!==e){const t=e.closest("summary");if(t&&t.parentNode!==n)return!1;if(null===t)return!1}return t},d=e=>!e||e.nodeType!==Node.ELEMENT_NODE||!!e.classList.contains("disabled")||(void 0!==e.disabled?e.disabled:e.hasAttribute("disabled")&&"false"!==e.getAttribute("disabled")),g=e=>{if(!document.documentElement.attachShadow)return null;if("function"==typeof e.getRootNode){const t=e.getRootNode();return t instanceof ShadowRoot?t:null}return e instanceof ShadowRoot?e:e.parentNode?g(e.parentNode):null},h=()=>{},p=e=>{e.offsetHeight},m=()=>window.jQuery&&!document.body.hasAttribute("data-bs-no-jquery")?window.jQuery:null,b=[],_=e=>{"loading"===document.readyState?(b.length||document.addEventListener("DOMContentLoaded",(()=>{for(const e of b)e()})),b.push(e)):e()},y=()=>"rtl"===document.documentElement.dir,E=e=>{_((()=>{const t=m();if(t){const n=e.NAME,r=t.fn[n];t.fn[n]=e.jQueryInterface,t.fn[n].Constructor=e,t.fn[n].noConflict=()=>(t.fn[n]=r,e.jQueryInterface)}}))},v=(e,t=[],n=e)=>"function"==typeof e?e(...t):n,A=(e,t,n=!0)=>{if(!n)return void v(e);const o=5,s=l(t)+o;let i=!1;const c=({target:n})=>{n===t&&(i=!0,t.removeEventListener(r,c),v(e))};t.addEventListener(r,c),setTimeout((()=>{i||a(t)}),s)},w=(e,t,n,r)=>{const o=e.length;let s=e.indexOf(t);return-1===s?!n&&r?e[o-1]:e[0]:(s+=n?1:-1,r&&(s=(s+o)%o),e[Math.max(0,Math.min(s,o-1))])};e.defineJQueryPlugin=E,e.execute=v,e.executeAfterTransition=A,e.findShadowRoot=g,e.getElement=u,e.getNextActiveElement=w,e.getTransitionDurationFromElement=l,e.getUID=i,e.getjQuery=m,e.isDisabled=d,e.isElement=c,e.isRTL=y,e.isVisible=f,e.noop=h,e.onDOMContentLoaded=_,e.parseSelector=o,e.reflow=p,e.toType=s,e.triggerTransitionEnd=a,Object.defineProperty(e,Symbol.toStringTag,{value:"Module"})}(o.exports),r.exports=function(e){const t=/[^.]*(?=\..*)\.|.*/,n=/\..*/,r=/::\d+$/,o={};let s=1;const i={mouseenter:"mouseover",mouseleave:"mouseout"},l=new Set(["click","dblclick","mouseup","mousedown","contextmenu","mousewheel","DOMMouseScroll","mouseover","mouseout","mousemove","selectstart","selectend","keydown","keypress","keyup","orientationchange","touchstart","touchmove","touchend","touchcancel","pointerdown","pointermove","pointerup","pointerleave","pointercancel","gesturestart","gesturechange","gestureend","focus","blur","change","reset","select","submit","focusin","focusout","load","unload","beforeunload","resize","move","DOMContentLoaded","readystatechange","error","abort","scroll"]);function a(e,t){return t&&`${t}::${s++}`||e.uidEvent||s++}function c(e){const t=a(e);return e.uidEvent=t,o[t]=o[t]||{},o[t]}function u(e,t){return function n(r){return y(r,{delegateTarget:e}),n.oneOff&&_.off(e,r.type,t),t.apply(e,[r])}}function f(e,t,n){return function r(o){const s=e.querySelectorAll(t);for(let{target:i}=o;i&&i!==this;i=i.parentNode)for(const l of s)if(l===i)return y(o,{delegateTarget:i}),r.oneOff&&_.off(e,o.type,t,n),n.apply(i,[o])}}function d(e,t,n=null){return Object.values(e).find((e=>e.callable===t&&e.delegationSelector===n))}function g(e,t,n){const r="string"==typeof t,o=r?n:t||n;let s=b(e);return l.has(s)||(s=e),[r,o,s]}function h(e,n,r,o,s){if("string"!=typeof n||!e)return;let[l,h,p]=g(n,r,o);if(n in i){const e=e=>function(t){if(!t.relatedTarget||t.relatedTarget!==t.delegateTarget&&!t.delegateTarget.contains(t.relatedTarget))return e.call(this,t)};h=e(h)}const m=c(e),b=m[p]||(m[p]={}),_=d(b,h,l?r:null);if(_)return void(_.oneOff=_.oneOff&&s);const y=a(h,n.replace(t,"")),E=l?f(e,r,h):u(e,h);E.delegationSelector=l?r:null,E.callable=h,E.oneOff=s,E.uidEvent=y,b[y]=E,e.addEventListener(p,E,l)}function p(e,t,n,r,o){const s=d(t[n],r,o);s&&(e.removeEventListener(n,s,Boolean(o)),delete t[n][s.uidEvent])}function m(e,t,n,r){const o=t[n]||{};for(const[s,i]of Object.entries(o))s.includes(r)&&p(e,t,n,i.callable,i.delegationSelector)}function b(e){return e=e.replace(n,""),i[e]||e}const _={on(e,t,n,r){h(e,t,n,r,!1)},one(e,t,n,r){h(e,t,n,r,!0)},off(e,t,n,o){if("string"!=typeof t||!e)return;const[s,i,l]=g(t,n,o),a=l!==t,u=c(e),f=u[l]||{},d=t.startsWith(".");if(void 0===i){if(d)for(const n of Object.keys(u))m(e,u,n,t.slice(1));for(const[n,o]of Object.entries(f)){const s=n.replace(r,"");a&&!t.includes(s)||p(e,u,l,o.callable,o.delegationSelector)}}else{if(!Object.keys(f).length)return;p(e,u,l,i,s?n:null)}},trigger(t,n,r){if("string"!=typeof n||!t)return null;const o=e.getjQuery();let s=null,i=!0,l=!0,a=!1;n!==b(n)&&o&&(s=o.Event(n,r),o(t).trigger(s),i=!s.isPropagationStopped(),l=!s.isImmediatePropagationStopped(),a=s.isDefaultPrevented());const c=y(new Event(n,{bubbles:i,cancelable:!0}),r);return a&&c.preventDefault(),l&&t.dispatchEvent(c),c.defaultPrevented&&s&&s.preventDefault(),c}};function y(e,t={}){for(const[n,r]of Object.entries(t))try{e[n]=r}catch(t){Object.defineProperty(e,n,{configurable:!0,get:()=>r})}return e}return _}(o.exports);var s={exports:{}},i={exports:{}};i.exports=function(){function e(e){if("true"===e)return!0;if("false"===e)return!1;if(e===Number(e).toString())return Number(e);if(""===e||"null"===e)return null;if("string"!=typeof e)return e;try{return JSON.parse(decodeURIComponent(e))}catch(t){return e}}function t(e){return e.replace(/[A-Z]/g,(e=>`-${e.toLowerCase()}`))}return{setDataAttribute(e,n,r){e.setAttribute(`data-bs-${t(n)}`,r)},removeDataAttribute(e,n){e.removeAttribute(`data-bs-${t(n)}`)},getDataAttributes(t){if(!t)return{};const n={},r=Object.keys(t.dataset).filter((e=>e.startsWith("bs")&&!e.startsWith("bsConfig")));for(const o of r){let r=o.replace(/^bs/,"");r=r.charAt(0).toLowerCase()+r.slice(1,r.length),n[r]=e(t.dataset[o])}return n},getDataAttribute:(n,r)=>e(n.getAttribute(`data-bs-${t(r)}`))}}(),s.exports=function(e,t){class n{static get Default(){return{}}static get DefaultType(){return{}}static get NAME(){throw new Error('You have to implement the static method "NAME", for each component!')}_getConfig(e){return e=this._mergeConfigObj(e),e=this._configAfterMerge(e),this._typeCheckConfig(e),e}_configAfterMerge(e){return e}_mergeConfigObj(n,r){const o=t.isElement(r)?e.getDataAttribute(r,"config"):{};return{...this.constructor.Default,..."object"==typeof o?o:{},...t.isElement(r)?e.getDataAttributes(r):{},..."object"==typeof n?n:{}}}_typeCheckConfig(e,n=this.constructor.DefaultType){for(const[r,o]of Object.entries(n)){const n=e[r],s=t.isElement(n)?"element":t.toType(n);if(!new RegExp(o).test(s))throw new TypeError(`${this.constructor.NAME.toUpperCase()}: Option "${r}" provided type "${s}" but expected type "${o}".`)}}}return n}(i.exports,o.exports),t.exports=function(e,t,n,r){const o="5.3.3";class s extends n{constructor(t,n){super(),(t=r.getElement(t))&&(this._element=t,this._config=this._getConfig(n),e.set(this._element,this.constructor.DATA_KEY,this))}dispose(){e.remove(this._element,this.constructor.DATA_KEY),t.off(this._element,this.constructor.EVENT_KEY);for(const e of Object.getOwnPropertyNames(this))this[e]=null}_queueCallback(e,t,n=!0){r.executeAfterTransition(e,t,n)}_getConfig(e){return e=this._mergeConfigObj(e,this._element),e=this._configAfterMerge(e),this._typeCheckConfig(e),e}static getInstance(t){return e.get(r.getElement(t),this.DATA_KEY)}static getOrCreateInstance(e,t={}){return this.getInstance(e)||new this(e,"object"==typeof t?t:null)}static get VERSION(){return o}static get DATA_KEY(){return`bs.${this.NAME}`}static get EVENT_KEY(){return`.${this.DATA_KEY}`}static eventName(e){return`${e}${this.EVENT_KEY}`}}return s}(n.exports,r.exports,s.exports,o.exports);var l={exports:{}};l.exports=function(e){const t=t=>{let n=t.getAttribute("data-bs-target");if(!n||"#"===n){let e=t.getAttribute("href");if(!e||!e.includes("#")&&!e.startsWith("."))return null;e.includes("#")&&!e.startsWith("#")&&(e=`#${e.split("#")[1]}`),n=e&&"#"!==e?e.trim():null}return n?n.split(",").map((t=>e.parseSelector(t))).join(","):null},n={find:(e,t=document.documentElement)=>[].concat(...Element.prototype.querySelectorAll.call(t,e)),findOne:(e,t=document.documentElement)=>Element.prototype.querySelector.call(t,e),children:(e,t)=>[].concat(...e.children).filter((e=>e.matches(t))),parents(e,t){const n=[];let r=e.parentNode.closest(t);for(;r;)n.push(r),r=r.parentNode.closest(t);return n},prev(e,t){let n=e.previousElementSibling;for(;n;){if(n.matches(t))return[n];n=n.previousElementSibling}return[]},next(e,t){let n=e.nextElementSibling;for(;n;){if(n.matches(t))return[n];n=n.nextElementSibling}return[]},focusableChildren(t){const n=["a","button","input","textarea","select","details","[tabindex]",'[contenteditable="true"]'].map((e=>`${e}:not([tabindex^="-"])`)).join(",");return this.find(n,t).filter((t=>!e.isDisabled(t)&&e.isVisible(t)))},getSelectorFromElement(e){const r=t(e);return r&&n.findOne(r)?r:null},getElementFromSelector(e){const r=t(e);return r?n.findOne(r):null},getMultipleElementsFromSelector(e){const r=t(e);return r?n.find(r):[]}};return n}(o.exports),e.exports=function(e,t,n,r){const o="collapse",s=".bs.collapse",i=`show${s}`,l=`shown${s}`,a=`hide${s}`,c=`hidden${s}`,u=`click${s}.data-api`,f="show",d="collapse",g="collapsing",h="collapsed",p=`:scope .${d} .${d}`,m="collapse-horizontal",b="width",_="height",y=".collapse.show, .collapse.collapsing",E='[data-bs-toggle="collapse"]',v={parent:null,toggle:!0},A={parent:"(null|element)",toggle:"boolean"};class w extends e{constructor(e,t){super(e,t),this._isTransitioning=!1,this._triggerArray=[];const r=n.find(E);for(const e of r){const t=n.getSelectorFromElement(e),r=n.find(t).filter((e=>e===this._element));null!==t&&r.length&&this._triggerArray.push(e)}this._initializeChildren(),this._config.parent||this._addAriaAndCollapsedClass(this._triggerArray,this._isShown()),this._config.toggle&&this.toggle()}static get Default(){return v}static get DefaultType(){return A}static get NAME(){return o}toggle(){this._isShown()?this.hide():this.show()}show(){if(this._isTransitioning||this._isShown())return;let e=[];if(this._config.parent&&(e=this._getFirstLevelChildren(y).filter((e=>e!==this._element)).map((e=>w.getOrCreateInstance(e,{toggle:!1})))),e.length&&e[0]._isTransitioning)return;if(t.trigger(this._element,i).defaultPrevented)return;for(const t of e)t.hide();const n=this._getDimension();this._element.classList.remove(d),this._element.classList.add(g),this._element.style[n]=0,this._addAriaAndCollapsedClass(this._triggerArray,!0),this._isTransitioning=!0;const r=()=>{this._isTransitioning=!1,this._element.classList.remove(g),this._element.classList.add(d,f),this._element.style[n]="",t.trigger(this._element,l)},o=`scroll${n[0].toUpperCase()+n.slice(1)}`;this._queueCallback(r,this._element,!0),this._element.style[n]=`${this._element[o]}px`}hide(){if(this._isTransitioning||!this._isShown())return;if(t.trigger(this._element,a).defaultPrevented)return;const e=this._getDimension();this._element.style[e]=`${this._element.getBoundingClientRect()[e]}px`,r.reflow(this._element),this._element.classList.add(g),this._element.classList.remove(d,f);for(const e of this._triggerArray){const t=n.getElementFromSelector(e);t&&!this._isShown(t)&&this._addAriaAndCollapsedClass([e],!1)}this._isTransitioning=!0;const o=()=>{this._isTransitioning=!1,this._element.classList.remove(g),this._element.classList.add(d),t.trigger(this._element,c)};this._element.style[e]="",this._queueCallback(o,this._element,!0)}_isShown(e=this._element){return e.classList.contains(f)}_configAfterMerge(e){return e.toggle=Boolean(e.toggle),e.parent=r.getElement(e.parent),e}_getDimension(){return this._element.classList.contains(m)?b:_}_initializeChildren(){if(!this._config.parent)return;const e=this._getFirstLevelChildren(E);for(const t of e){const e=n.getElementFromSelector(t);e&&this._addAriaAndCollapsedClass([t],this._isShown(e))}}_getFirstLevelChildren(e){const t=n.find(p,this._config.parent);return n.find(e,this._config.parent).filter((e=>!t.includes(e)))}_addAriaAndCollapsedClass(e,t){if(e.length)for(const n of e)n.classList.toggle(h,!t),n.setAttribute("aria-expanded",t)}static jQueryInterface(e){const t={};return"string"==typeof e&&/show|hide/.test(e)&&(t.toggle=!1),this.each((function(){const n=w.getOrCreateInstance(this,t);if("string"==typeof e){if(void 0===n[e])throw new TypeError(`No method named "${e}"`);n[e]()}}))}}return t.on(document,u,E,(function(e){("A"===e.target.tagName||e.delegateTarget&&"A"===e.delegateTarget.tagName)&&e.preventDefault();for(const e of n.getMultipleElementsFromSelector(this))w.getOrCreateInstance(e,{toggle:!1}).toggle()})),r.defineJQueryPlugin(w),w}(t.exports,r.exports,l.exports,o.exports);var a=e.exports;export{a as default};
