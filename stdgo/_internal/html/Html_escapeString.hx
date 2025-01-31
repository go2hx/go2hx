package stdgo._internal.html;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
function escapeString(_s:stdgo.GoString):stdgo.GoString {
        return @:check2r stdgo._internal.html.Html__htmlEscaper._htmlEscaper.replace(_s?.__copy__())?.__copy__();
    }
