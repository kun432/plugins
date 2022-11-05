import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';var d={languages:{ru:{niceName:"Таймер",description:"Поиск в Google",authors:"Hanna",commands:{"Set Timer":{name:"Установить таймер",description:'Показывает уведомление и говорит "Таймер установлен" после того, как назван промежуток времени.',match:{description:'Скажите "Установить таймер [имя таймера (не обязательно)] на x секунд/минут/часов"',fn:({preTs:h,normTs:i})=>{let u=i.match(/\b\u0443\u0441\u0442\u0430\u043D\u043E\u0432\u0438\u0442\u044C (?:(.*) )?\u0442\u0430\u0439\u043C\u0435\u0440 (?:\u043D\u0430 )?(\u043F\u043E\u043B\u0447\u0430\u0441\u0430|\u043F\u043E\u043B\u0442\u043E\u0440\u0430 \u0447\u0430\u0441\u0430|(\d+) ?(\u0441\u0435\u043A\u0443\u043D\u0434(?:\u0443|\u044B)?|\u043C\u0438\u043D\u0443\u0442(?:\u0443|\u044B)?|\u0447\u0430\u0441(?:\u0430|\u043E\u0432)?)(?:(?: \u0438)? (?:(?:(\d+) (\u0441\u0435\u043A\u0443\u043D\u0434(?:\u0443|\u044B)?|\u043C\u0438\u043D\u0443\u0442(?:\u0443|\u044B)?))))?)\b/);if(u){let r=null,a=u[1],t=u[2]&&u[2].startsWith("пол")?"half":null,o=u[3],l=u[4]?u[4].startsWith("секунд")?"second":u[4].startsWith("минут")?"minute":"hour":"",m=u[5],c=u[6]?u[6].startsWith("секунд")?"second":u[6].startsWith("минут")?"minute":"hour":"",e=u.index+u[0].length;return[u.index,e,[u[0],a,o,l,m,c,t,r]]}else if(/\b\u0443\u0441\u0442\u0430\u043D\u043E\u0432\u0438\u0442\u044C (?:(.*) )?(?:\u0442\u0430\u0439\u043C\u0435\u0440)? (?:\u043D\u0430 )?/.test(i))return!1}}}}}},niceName:"Timer",description:"Tools for setting timers.",version:"4.8.0",apiVersion:2,match:/.*/,authors:"Miko",commands:[{name:"Set Timer",description:'Shows a notification and speaks "timer elapsed" (audio) after the specified duration.',global:!0,match:{description:"set [timer name (optional)] timer for [n] [seconds/minutes/hours]",fn:()=>{}},fn:async({preTs:h,normTs:i},u,r,a,t,o,l,m,c)=>{let e=Number(a);t.startsWith("minute")?e*=60:t.startsWith("hour")&&(e*=3600);let n=Number(o);!isNaN(n)&&n&&(l.startsWith("minute")&&(n*=60),e+=n),m?t.startsWith("minute")?e+=30:e+=1800:c&&(t.startsWith("minute")?e+=15:e+=900),`${e}`,setTimeout(()=>{let s=`${r||""} timer elapsed.`.trimLeft();s=s[0].toUpperCase()+s.slice(1,s.length),chrome.notifications.create({type:"basic",title:s,message:`"${i}"`,iconUrl:"assets/icon-timer-48.png",requireInteraction:!0}),chrome.tts.speak(s)},e*1e3)}}]};export{d as default};
LS-SPLITwindow.allPlugins.Timer=(()=>{var s=/\bset (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?\b/,n=/\bset\b(.* )?(timer)?\b/,r={...PluginBase,commands:{"Set Timer":{match:{en:({preTs:i,normTs:t})=>{let u=t.match(s);if(u){let e=u.index+u[0].length;return[u.index,e,u]}else if(n.test(t))return!1},ru:({preTs:i,normTs:t})=>{let u=t.match(/\b\u0443\u0441\u0442\u0430\u043D\u043E\u0432\u0438\u0442\u044C (?:(.*) )?\u0442\u0430\u0439\u043C\u0435\u0440 (?:\u043D\u0430 )?(\u043F\u043E\u043B\u0447\u0430\u0441\u0430|\u043F\u043E\u043B\u0442\u043E\u0440\u0430 \u0447\u0430\u0441\u0430|(\d+) ?(\u0441\u0435\u043A\u0443\u043D\u0434(?:\u0443|\u044B)?|\u043C\u0438\u043D\u0443\u0442(?:\u0443|\u044B)?|\u0447\u0430\u0441(?:\u0430|\u043E\u0432)?)(?:(?: \u0438)? (?:(?:(\d+) (\u0441\u0435\u043A\u0443\u043D\u0434(?:\u0443|\u044B)?|\u043C\u0438\u043D\u0443\u0442(?:\u0443|\u044B)?))))?)\b/);if(u){let e=null,a=u[1],l=u[2]&&u[2].startsWith("пол")?"half":null,d=u[3],h=u[4]?u[4].startsWith("секунд")?"second":u[4].startsWith("минут")?"minute":"hour":"",m=u[5],c=u[6]?u[6].startsWith("секунд")?"second":u[6].startsWith("минут")?"minute":"hour":"",o=u.index+u[0].length;return[u.index,o,[u[0],a,d,h,m,c,l,e]]}else if(/\b\u0443\u0441\u0442\u0430\u043D\u043E\u0432\u0438\u0442\u044C (?:(.*) )?(?:\u0442\u0430\u0439\u043C\u0435\u0440)? (?:\u043D\u0430 )?/.test(t))return!1}}}}};return r})();
LS-SPLITwindow.allPlugins.Timer=(()=>{var s=/\bset (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?\b/,n=/\bset\b(.* )?(timer)?\b/,r={...PluginBase,commands:{"Set Timer":{match:{en:({preTs:i,normTs:t})=>{let u=t.match(s);if(u){let e=u.index+u[0].length;return[u.index,e,u]}else if(n.test(t))return!1},ru:({preTs:i,normTs:t})=>{let u=t.match(/\b\u0443\u0441\u0442\u0430\u043D\u043E\u0432\u0438\u0442\u044C (?:(.*) )?\u0442\u0430\u0439\u043C\u0435\u0440 (?:\u043D\u0430 )?(\u043F\u043E\u043B\u0447\u0430\u0441\u0430|\u043F\u043E\u043B\u0442\u043E\u0440\u0430 \u0447\u0430\u0441\u0430|(\d+) ?(\u0441\u0435\u043A\u0443\u043D\u0434(?:\u0443|\u044B)?|\u043C\u0438\u043D\u0443\u0442(?:\u0443|\u044B)?|\u0447\u0430\u0441(?:\u0430|\u043E\u0432)?)(?:(?: \u0438)? (?:(?:(\d+) (\u0441\u0435\u043A\u0443\u043D\u0434(?:\u0443|\u044B)?|\u043C\u0438\u043D\u0443\u0442(?:\u0443|\u044B)?))))?)\b/);if(u){let e=null,a=u[1],l=u[2]&&u[2].startsWith("пол")?"half":null,d=u[3],h=u[4]?u[4].startsWith("секунд")?"second":u[4].startsWith("минут")?"minute":"hour":"",m=u[5],c=u[6]?u[6].startsWith("секунд")?"second":u[6].startsWith("минут")?"minute":"hour":"",o=u.index+u[0].length;return[u.index,o,[u[0],a,d,h,m,c,l,e]]}else if(/\b\u0443\u0441\u0442\u0430\u043D\u043E\u0432\u0438\u0442\u044C (?:(.*) )?(?:\u0442\u0430\u0439\u043C\u0435\u0440)? (?:\u043D\u0430 )?/.test(t))return!1}}}}};return r})();