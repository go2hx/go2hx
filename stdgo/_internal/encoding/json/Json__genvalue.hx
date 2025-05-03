package stdgo._internal.encoding.json;
function _genValue(_n:stdgo.GoInt):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L241"
        if ((_n > (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L242"
            {
                final __value__ = stdgo._internal.math.rand.Rand_intn.intn((2 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L244"
                    return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genarray._genArray(_n));
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L246"
                    return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genmap._genMap(_n));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L249"
        {
            final __value__ = stdgo._internal.math.rand.Rand_intn.intn((3 : stdgo.GoInt));
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L251"
                return stdgo.Go.toInterface(stdgo._internal.math.rand.Rand_intn.intn((2 : stdgo.GoInt)) == ((0 : stdgo.GoInt)));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L253"
                return stdgo.Go.toInterface(stdgo._internal.math.rand.Rand_normfloat64.normFloat64());
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L255"
                return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genstring._genString((30 : stdgo.GoFloat64)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner_test.go#L257"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
