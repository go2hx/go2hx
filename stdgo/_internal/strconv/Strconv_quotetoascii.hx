package stdgo._internal.strconv;
function quoteToASCII(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L142"
        return stdgo._internal.strconv.Strconv__quotewith._quoteWith(_s?.__copy__(), (34 : stdgo.GoUInt8), true, false)?.__copy__();
    }
