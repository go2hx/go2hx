package stdgo._internal.testing.slogtest;
function _inGroup(_name:stdgo.GoString, _c:stdgo._internal.testing.slogtest.Slogtest_t_check.T_check):stdgo._internal.testing.slogtest.Slogtest_t_check.T_check {
        //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L283"
        return function(_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoString {
            var __tmp__ = (_m != null && _m.__exists__(_name?.__copy__()) ? { _0 : _m[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L285"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L286"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("missing group %q" : stdgo.GoString), stdgo.Go.toInterface(_name))?.__copy__();
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_v : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), _1 : false };
            }, _g = __tmp__._0, _ok = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L289"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L290"
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("value for group %q is not map[string]any" : stdgo.GoString), stdgo.Go.toInterface(_name))?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/testing/slogtest/slogtest.go#L292"
            return _c(_g)?.__copy__();
        };
    }
