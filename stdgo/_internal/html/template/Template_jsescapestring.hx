package stdgo._internal.html.template;
function jSEscapeString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L995"
        return stdgo._internal.text.template.Template_jsescapestring.jSEscapeString(_s?.__copy__())?.__copy__();
    }
