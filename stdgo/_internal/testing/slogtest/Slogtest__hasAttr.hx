package stdgo._internal.testing.slogtest;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.runtime.Runtime;
function _hasAttr(_key:stdgo.GoString, _wantVal:stdgo.AnyInterface):stdgo._internal.testing.slogtest.Slogtest_T_check.T_check {
        return function(_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoString {
            {
                var _s = (stdgo._internal.testing.slogtest.Slogtest__hasKey._hasKey(_key?.__copy__())(_m)?.__copy__() : stdgo.GoString);
                if (_s != (stdgo.Go.str())) {
                    return _s?.__copy__();
                };
            };
            var _gotVal = (_m[_key] ?? (null : stdgo.AnyInterface) : stdgo.AnyInterface);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_gotVal, _wantVal)) {
                return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q: got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_key), _gotVal, _wantVal)?.__copy__();
            };
            return stdgo.Go.str()?.__copy__();
        };
    }
