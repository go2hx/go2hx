package stdgo._internal.html;
function escapeString(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.html.Html__htmlEscaper._htmlEscaper.replace(_s?.__copy__())?.__copy__();
    }
