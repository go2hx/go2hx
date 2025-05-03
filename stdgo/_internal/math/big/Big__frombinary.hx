package stdgo._internal.math.big;
function _fromBinary(_s:stdgo.GoString):stdgo.GoInt64 {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (2 : stdgo.GoInt), (64 : stdgo.GoInt)), _x:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L333"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L334"
            throw stdgo.Go.toInterface(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L336"
        return _x;
    }
