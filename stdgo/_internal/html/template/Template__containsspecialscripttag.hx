package stdgo._internal.html.template;
function _containsSpecialScriptTag(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L746"
        return stdgo._internal.html.template.Template__specialscripttagre._specialScriptTagRE.match(_s);
    }
