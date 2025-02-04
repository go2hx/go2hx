package stdgo._internal.html;
function escapeString(_s:stdgo.GoString):stdgo.GoString {
        return @:check2r stdgo._internal.html.Html__htmlescaper._htmlEscaper.replace(_s?.__copy__())?.__copy__();
    }
