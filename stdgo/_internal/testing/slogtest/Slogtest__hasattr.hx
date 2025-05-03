package stdgo._internal.testing.slogtest;
function _hasAttr(_key:stdgo.GoString, _wantVal:stdgo.AnyInterface):stdgo._internal.testing.slogtest.Slogtest_t_check.T_check {
        //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L270"
        return function(_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L271"
            {
                var _s = (stdgo._internal.testing.slogtest.Slogtest__haskey._hasKey(_key?.__copy__())(_m)?.__copy__() : stdgo.GoString);
                if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L272"
                    return _s?.__copy__();
                };
            };
            var _gotVal = (_m[_key] ?? (null : stdgo.AnyInterface) : stdgo.AnyInterface);
            //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L275"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_gotVal, _wantVal)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L276"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q: got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_key), _gotVal, _wantVal)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L278"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
    }
