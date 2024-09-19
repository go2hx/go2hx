package stdgo._internal.encoding.json;
function _genValue(_n:stdgo.GoInt):stdgo.AnyInterface {
        if ((_n > (1 : stdgo.GoInt) : Bool)) {
            {
                final __value__ = stdgo._internal.math.rand.Rand_intn.intn((2 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genArray._genArray(_n));
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genMap._genMap(_n));
                };
            };
        };
        {
            final __value__ = stdgo._internal.math.rand.Rand_intn.intn((3 : stdgo.GoInt));
            if (__value__ == ((0 : stdgo.GoInt))) {
                return stdgo.Go.toInterface(stdgo._internal.math.rand.Rand_intn.intn((2 : stdgo.GoInt)) == ((0 : stdgo.GoInt)));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return stdgo.Go.toInterface(stdgo._internal.math.rand.Rand_normFloat64.normFloat64());
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genString._genString((30 : stdgo.GoFloat64)));
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
