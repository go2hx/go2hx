package stdgo._internal.html.template;
function _containsSpecialScriptTag(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return @:check2r stdgo._internal.html.template.Template__specialScriptTagRE._specialScriptTagRE.match(_s);
    }
