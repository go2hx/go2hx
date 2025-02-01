package stdgo._internal.testing.slogtest;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
function _hasKey(_key:stdgo.GoString):stdgo._internal.testing.slogtest.Slogtest_T_check.T_check {
        return function(_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoString {
            {
                var __tmp__ = (_m != null && _m.exists(_key?.__copy__()) ? { _0 : _m[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), __0:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return stdgo._internal.fmt.Fmt_sprintf.sprintf(("missing key %q" : stdgo.GoString), stdgo.Go.toInterface(_key))?.__copy__();
                };
            };
            return stdgo.Go.str()?.__copy__();
        };
    }
