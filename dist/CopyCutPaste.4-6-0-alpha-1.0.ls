import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';function e(t){return new Promise(i=>{chrome.permissions.contains({permissions:[t]},a=>{a?i(!0):chrome.permissions.request({permissions:[t]},s=>{i(s)})})})}var o={languages:{ja:{niceName:"コピー, 切り取り, 貼り付け",description:"このプラグインの使用前にマウスで権限を与える必要があります。",authors:"Hiroki Yamazaki, Miko",commands:{Copy:{name:"コピー",description:"選択されたテキストをクリップボードにコピーします。",match:"こぴー"},Cut:{name:"切り取り",description:"選択されたテキストをクリップボードに切り取ります。",match:["かっと","きりとり"]},Paste:{name:"貼り付け",description:"クリップボードの内容を貼り付けます。",match:["はりつけ","ぺーすと"]}}},uk:{niceName:"копіювати вирізати та вставляти",description:"",authors:"Tanya Kunica",commands:{Copy:{name:"копіювати",match:["копіювати"],description:"Копіювання виділений тексту до буфера обміну."},Cut:{name:"вирізати",match:["вирізати"],description:"Вирізання виділений тексту до буфера обміну."},Paste:{name:"вставити",match:["вставити"],description:"Вставлення елементу з буфера обміну."}}}},niceName:"Copy, Cut and Paste",description:"Permissions must be granted with the mouse the first time this plugin is used.",version:"4.6.0-alpha.1",apiVersion:2,match:/.*/,homophones:{coffee:"copy",poppee:"copy",pissed:"paste",taste:"paste"},authors:"Miko",commands:[{name:"Copy",description:"Copies the selected text to the clipboard.",match:"copy",fn:async()=>{await e("clipboardWrite")}},{name:"Cut",description:"Cut the selected text to the clipboard.",match:"cut",fn:async()=>{await e("clipboardWrite")}},{name:"Paste",description:"Paste the item in the clipboard.",match:"paste",fn:async()=>{await e("clipboardRead")}}]};export{o as default};
LS-SPLITwindow.allPlugins.CopyCutPaste=(()=>{function m(e){return new Promise(n=>{chrome.permissions.contains({permissions:[e]},o=>{o?n(!0):chrome.permissions.request({permissions:[e]},a=>{n(a)})})})}var s={...PluginBase,commands:{Copy:{pageFn:async()=>{document.execCommand("copy")}},Cut:{pageFn:async()=>{document.execCommand("cut")}},Paste:{pageFn:async()=>{document.execCommand("paste")}}}};return s})();
LS-SPLIT