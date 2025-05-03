package stdgo._internal.html;
function escapeString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L179"
        return stdgo._internal.html.Html__htmlescaper._htmlEscaper.replace(_s?.__copy__())?.__copy__();
    }
