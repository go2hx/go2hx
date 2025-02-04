package stdgo._internal.regexp;
function _quote(_s:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.strconv.Strconv_canbackquote.canBackquote(_s?.__copy__())) {
            return ((("`" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__();
    }
