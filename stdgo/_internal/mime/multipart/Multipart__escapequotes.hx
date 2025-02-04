package stdgo._internal.mime.multipart;
function _escapeQuotes(_s:stdgo.GoString):stdgo.GoString {
        return @:check2r stdgo._internal.mime.multipart.Multipart__quoteescaper._quoteEscaper.replace(_s?.__copy__())?.__copy__();
    }
