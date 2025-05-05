package stdgo._internal.strconv;
function canBackquote(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L216"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _s = (_s.__slice__(_wid) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L219"
            if ((_wid > (1 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L220"
                if (_r == ((65279 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L221"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L223"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L225"
            if (_r == ((65533 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L226"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L228"
            if ((((((_r < (32 : stdgo.GoInt32) : Bool) && (_r != (9 : stdgo.GoInt32)) : Bool)) || _r == ((96 : stdgo.GoInt32)) : Bool) || (_r == (127 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L229"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/quote.go#L232"
        return true;
    }
