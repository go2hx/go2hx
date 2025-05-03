package stdgo._internal.html.template;
function _escapeSpecialScriptTags(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L750"
        return stdgo._internal.html.template.Template__specialscripttagre._specialScriptTagRE.replaceAll(_s, stdgo._internal.html.template.Template__specialscripttagreplacement._specialScriptTagReplacement);
    }
