import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';var r="https://play.spotify.com/",c="*://*.spotify.com/*";var i;(function(t){t.Next='button[data-testid="control-button-skip-forward"]',t.Play='button[data-testid="control-button-play"]',t.Previous='button[data-testid="control-button-skip-back"]',t.Pause='button[data-testid="control-button-pause"]'})(i||(i={}));async function s(){return new Promise(t=>chrome.tabs.query({url:c},e=>{t(e.length?e[0]:null)}))}async function p(){return new Promise(t=>chrome.tabs.create({url:r},e=>t(e)))}async function o(t,e=null){let a=e||await s();return new Promise(n=>{if(a&&a.id)return chrome.tabs.sendMessage(a.id,{type:"postMessage",control:t},()=>{n(!0)});n(!1)})}var u={languages:{},niceName:"Spotify",description:"An experimental plugin for spotify.com",match:/.*\.spotify\.com/,version:"0.0.9",apiVersion:2,authors:"Ahmed Kamal",commands:[{name:"spotify play",description:"Play the Spotify web player.",global:!0,match:"spotify play",fn:async function(){let t=await s();t||prompt("Spotify player seems to be closed, do you want me to open it?","yes")==="yes"&&(t=await p()),await o('button[data-testid="control-button-play"]',t)}},{name:"spotify pause",description:"Pause the Spotify web player.",global:!0,match:"spotify pause",fn:async function(){await o('button[data-testid="control-button-pause"]')}},{name:"spotify next",description:"Moves to the next song on the Spotify web player.",global:!0,match:"spotify next",fn:async function(){await o('button[data-testid="control-button-skip-forward"]')}},{name:"spotify previous",description:"Moves to the previous song on the Spotify web player.",global:!0,match:"spotify previous",fn:async function(){await o('button[data-testid="control-button-skip-back"]')}}]};export{u as default};
LS-SPLITallPlugins.Spotify=(()=>{var s="https://play.spotify.com/",i="*://*.spotify.com/*",u=/.*\.spotify\.com/,e;(function(t){t.Next='button[data-testid="control-button-skip-forward"]',t.Play='button[data-testid="control-button-play"]',t.Previous='button[data-testid="control-button-skip-back"]',t.Pause='button[data-testid="control-button-pause"]'})(e||(e={}));function n(t){let o=document.querySelector(t);o&&o.click()}async function c(){return new Promise(t=>chrome.tabs.query({url:i},o=>{t(o.length?o[0]:null)}))}async function d(){return new Promise(t=>chrome.tabs.create({url:s},o=>t(o)))}async function b(t,o=null){let a=o||await c();return new Promise(r=>{if(a&&a.id)return chrome.tabs.sendMessage(a.id,{type:"postMessage",control:t},()=>{r(!0)});r(!1)})}var l={...PluginBase,init:function(){u.test(window.location.origin)&&chrome.runtime.onMessage.addListener((t,o,a)=>{if(t.type==="postMessage"){switch(t.control){case'button[data-testid="control-button-play"]':{n('button[data-testid="control-button-play"]');break}case'button[data-testid="control-button-pause"]':n('button[data-testid="control-button-pause"]');break;case'button[data-testid="control-button-skip-forward"]':n('button[data-testid="control-button-skip-forward"]');break;case'button[data-testid="control-button-skip-back"]':n('button[data-testid="control-button-skip-back"]');break;default:break}a(null)}})},commands:{}};return l})();
LS-SPLITallPlugins.Spotify=(()=>{var s="https://play.spotify.com/",i="*://*.spotify.com/*",u=/.*\.spotify\.com/,e;(function(t){t.Next='button[data-testid="control-button-skip-forward"]',t.Play='button[data-testid="control-button-play"]',t.Previous='button[data-testid="control-button-skip-back"]',t.Pause='button[data-testid="control-button-pause"]'})(e||(e={}));function n(t){let o=document.querySelector(t);o&&o.click()}async function c(){return new Promise(t=>chrome.tabs.query({url:i},o=>{t(o.length?o[0]:null)}))}async function d(){return new Promise(t=>chrome.tabs.create({url:s},o=>t(o)))}async function b(t,o=null){let a=o||await c();return new Promise(r=>{if(a&&a.id)return chrome.tabs.sendMessage(a.id,{type:"postMessage",control:t},()=>{r(!0)});r(!1)})}var l={...PluginBase,init:function(){u.test(window.location.origin)&&chrome.runtime.onMessage.addListener((t,o,a)=>{if(t.type==="postMessage"){switch(t.control){case'button[data-testid="control-button-play"]':{n('button[data-testid="control-button-play"]');break}case'button[data-testid="control-button-pause"]':n('button[data-testid="control-button-pause"]');break;case'button[data-testid="control-button-skip-forward"]':n('button[data-testid="control-button-skip-forward"]');break;case'button[data-testid="control-button-skip-back"]':n('button[data-testid="control-button-skip-back"]');break;default:break}a(null)}})},commands:{}};return l})();
