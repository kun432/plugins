import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';var d=/\bset (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?\b/,h=/\bset\b(.* )?(timer)?\b/,c={...PluginBase,languages:{},niceName:"Timer",description:"Tools for setting timers.",version:"4.2.3-alpha.0",apiVersion:2,match:/.*/,authors:"Miko",commands:[{name:"Set Timer",description:'Shows a notification and speaks "timer elapsed" (audio) after the specified duration.',global:!0,match:{description:"set [timer name (optional)] timer for [n] [seconds/minutes/hours]",fn:({preTs:m,normTs:t})=>{let u=t.match(d);if(u){let s=u.index+u[0].length;return[u.index,s,u]}else if(h.test(t))return!1}},fn:async({preTs:m,normTs:t},u,s,n,x,r,B,o,l)=>{let e=Number(n);x.startsWith("minute")?e*=60:x.startsWith("hour")&&(e*=3600);let a=Number(r);!isNaN(a)&&a&&(B.startsWith("minute")&&(a*=60),e+=a),o?x.startsWith("minute")?e+=30:e+=1800:l&&(x.startsWith("minute")?e+=15:e+=900),""+e,setTimeout(()=>{let i=`${s||""} timer elapsed.`.trimLeft();i=i[0].toUpperCase()+i.slice(1,i.length),chrome.notifications.create({type:"basic",title:i,message:`"${t}"`,iconUrl:"assets/icon-timer-48.png",requireInteraction:!0}),chrome.tts.speak(i)},e*1e3)}}]};c.languages.ru={niceName:"Таймер",description:"Поиск в Google",authors:"Hanna",commands:{"Set Timer":{name:"Установить таймер",description:'Показывает уведомление и говорит "Таймер установлен" после того, как назван промежуток времени.',match:{description:'Скажите "Установить таймер [имя таймера (не обязательно)] на x секунд/минут/часов"',fn:({preTs:m,normTs:t})=>{let u=t.match(/\b\x83\x81\x82\xB0\xBD\xBE\xB2\xB8\x82\x8C (?:(.*) )?\x82\xB0\xB9\xBC\xB5\x80 (?:\xBD\xB0 )?(\xBF\xBE\xBB\x87\xB0\x81\xB0|\xBF\xBE\xBB\x82\xBE\x80\xB0 \x87\xB0\x81\xB0|(\d+) ?(\x81\xB5\xBA\x83\xBD\xB4(?:\x83|\x8B)?|\xBC\xB8\xBD\x83\x82(?:\x83|\x8B)?|\x87\xB0\x81(?:\xB0|\xBE\xB2)?)(?:(?: \xB8)? (?:(?:(\d+) (\x81\xB5\xBA\x83\xBD\xB4(?:\x83|\x8B)?|\xBC\xB8\xBD\x83\x82(?:\x83|\x8B)?))))?)\b/);if(u){let s=null,n=u[1],x=u[2]&&u[2].startsWith("пол")?"half":null,r=u[3],B=u[4]?u[4].startsWith("секунд")?"second":u[4].startsWith("минут")?"minute":"hour":"",o=u[5],l=u[6]?u[6].startsWith("секунд")?"second":u[6].startsWith("минут")?"minute":"hour":"",e=u.index+u[0].length;return[u.index,e,[u[0],n,r,B,o,l,x,s]]}else if(/\b\x83\x81\x82\xB0\xBD\xBE\xB2\xB8\x82\x8C (?:(.*) )?(?:\x82\xB0\xB9\xBC\xB5\x80)? (?:\xBD\xB0 )?/.test(t))return!1}}}}};var f=c;export{f as default};
LS-SPLITallPlugins.Timer=(()=>{var e=/\bset (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?\b/,u=/\bset\b(.* )?(timer)?\b/,s={...PluginBase,commands:{"Set Timer":{match:{en:({preTs:n,normTs:t})=>{let x=t.match(e);if(x){let B=x.index+x[0].length;return[x.index,B,x]}else if(u.test(t))return!1},ru:({preTs:n,normTs:t})=>{let x=t.match(/\b\x83\x81\x82\xB0\xBD\xBE\xB2\xB8\x82\x8C (?:(.*) )?\x82\xB0\xB9\xBC\xB5\x80 (?:\xBD\xB0 )?(\xBF\xBE\xBB\x87\xB0\x81\xB0|\xBF\xBE\xBB\x82\xBE\x80\xB0 \x87\xB0\x81\xB0|(\d+) ?(\x81\xB5\xBA\x83\xBD\xB4(?:\x83|\x8B)?|\xBC\xB8\xBD\x83\x82(?:\x83|\x8B)?|\x87\xB0\x81(?:\xB0|\xBE\xB2)?)(?:(?: \xB8)? (?:(?:(\d+) (\x81\xB5\xBA\x83\xBD\xB4(?:\x83|\x8B)?|\xBC\xB8\xBD\x83\x82(?:\x83|\x8B)?))))?)\b/);if(x){let B=null,r=x[1],a=x[2]&&x[2].startsWith("пол")?"half":null,i=x[3],l=x[4]?x[4].startsWith("секунд")?"second":x[4].startsWith("минут")?"minute":"hour":"",h=x[5],d=x[6]?x[6].startsWith("секунд")?"second":x[6].startsWith("минут")?"minute":"hour":"",m=x.index+x[0].length;return[x.index,m,[x[0],r,i,l,h,d,a,B]]}else if(/\b\x83\x81\x82\xB0\xBD\xBE\xB2\xB8\x82\x8C (?:(.*) )?(?:\x82\xB0\xB9\xBC\xB5\x80)? (?:\xBD\xB0 )?/.test(t))return!1}}}}};return s})();
LS-SPLITallPlugins.Timer=(()=>{var e=/\bset (?:(.*) )?timer (?:for )?(\d+) (seconds|minutes?|hours?)(?:(?: and)? (?:(?:(\d+) (seconds|minutes?))|(?:(?:a (?:(half)|(quarter))))))?\b/,u=/\bset\b(.* )?(timer)?\b/,s={...PluginBase,commands:{"Set Timer":{match:{en:({preTs:n,normTs:t})=>{let x=t.match(e);if(x){let B=x.index+x[0].length;return[x.index,B,x]}else if(u.test(t))return!1},ru:({preTs:n,normTs:t})=>{let x=t.match(/\b\x83\x81\x82\xB0\xBD\xBE\xB2\xB8\x82\x8C (?:(.*) )?\x82\xB0\xB9\xBC\xB5\x80 (?:\xBD\xB0 )?(\xBF\xBE\xBB\x87\xB0\x81\xB0|\xBF\xBE\xBB\x82\xBE\x80\xB0 \x87\xB0\x81\xB0|(\d+) ?(\x81\xB5\xBA\x83\xBD\xB4(?:\x83|\x8B)?|\xBC\xB8\xBD\x83\x82(?:\x83|\x8B)?|\x87\xB0\x81(?:\xB0|\xBE\xB2)?)(?:(?: \xB8)? (?:(?:(\d+) (\x81\xB5\xBA\x83\xBD\xB4(?:\x83|\x8B)?|\xBC\xB8\xBD\x83\x82(?:\x83|\x8B)?))))?)\b/);if(x){let B=null,r=x[1],a=x[2]&&x[2].startsWith("пол")?"half":null,i=x[3],l=x[4]?x[4].startsWith("секунд")?"second":x[4].startsWith("минут")?"minute":"hour":"",h=x[5],d=x[6]?x[6].startsWith("секунд")?"second":x[6].startsWith("минут")?"minute":"hour":"",m=x.index+x[0].length;return[x.index,m,[x[0],r,i,l,h,d,a,B]]}else if(/\b\x83\x81\x82\xB0\xBD\xBE\xB2\xB8\x82\x8C (?:(.*) )?(?:\x82\xB0\xB9\xBC\xB5\x80)? (?:\xBD\xB0 )?/.test(t))return!1}}}}};return s})();