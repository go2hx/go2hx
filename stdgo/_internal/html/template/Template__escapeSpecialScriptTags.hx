package stdgo._internal.html.template;
function _escapeSpecialScriptTags(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        return @:check2r stdgo._internal.html.template.Template__specialScriptTagRE._specialScriptTagRE.replaceAll(_s, stdgo._internal.html.template.Template__specialScriptTagReplacement._specialScriptTagReplacement);
    }
