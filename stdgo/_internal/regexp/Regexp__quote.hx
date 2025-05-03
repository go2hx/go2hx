package stdgo._internal.regexp;
function _quote(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L336"
        if (stdgo._internal.strconv.Strconv_canbackquote.canBackquote(_s?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L337"
            return ((("`" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L339"
        return stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__();
    }
