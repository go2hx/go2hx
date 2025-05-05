package stdgo._internal.mime.multipart;
function _escapeQuotes(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/writer.go#L135"
        return stdgo._internal.mime.multipart.Multipart__quoteescaper._quoteEscaper.replace(_s?.__copy__())?.__copy__();
    }
