<%*
let lst = ['[ ] to do',
'[/] in progress',
'[x] done',
'[-] canceled',
'[>] migrated',
'[<] scheduled',
'[?] question',
'[!] important',
'[*] star',
'["] quote',
'[l] location',
'[b] bookmark',
'[i] information',
'[S] savings',
'[I] idea',
'[p] pros',
'[c] cons',
'[f] fire',
'[k] key',
'[w] win',
'[u] up',
'[d] down'];
let opt = [];
lst.forEach(c => opt += c.charAt(1));

let x = await tp.system.suggester(lst, opt);
if (x == null) return;
let re = /(^\s*|^\t*)(-\s\[ \]\s|-\s\[.\]\s|\*\s|-\s|\d*\.\s|\*\s|\b|^)([^\n\r]*)/gim;
let editor = app.workspace.activeLeaf.view.editor;
let cur = editor.getCursor("from");
let text = editor.getLine(cur.line);
text = text.replace(re, (match, spaces, startText, sentence) => { return spaces + '- ['+x+'] ' + sentence });
editor.setLine(cur.line, text);
%>