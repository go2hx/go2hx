package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
function _escapeQuotes(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.mime.multipart.Multipart__quoteEscaper._quoteEscaper.replace(_s?.__copy__())?.__copy__();
    }
