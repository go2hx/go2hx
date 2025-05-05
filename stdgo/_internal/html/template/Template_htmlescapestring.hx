package stdgo._internal.html.template;
function hTMLEscapeString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L979"
        return stdgo._internal.text.template.Template_htmlescapestring.hTMLEscapeString(_s?.__copy__())?.__copy__();
    }
