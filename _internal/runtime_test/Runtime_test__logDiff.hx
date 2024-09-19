package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _logDiff(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _prefix:stdgo.GoString, _got:stdgo._internal.reflect.Reflect_Value.Value, _want:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _typ = (_got.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            final __value__ = _typ.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if (_got.len() != (_want.len())) {
                    _t.logf(("len(%s): got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_prefix), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                    return;
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _got.len() : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__logDiff._logDiff(_t, stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s[%d]" : stdgo.GoString), stdgo.Go.toInterface(_prefix), stdgo.Go.toInterface(_i))?.__copy__(), _got.index(_i)?.__copy__(), _want.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _typ.numField() : Bool), _i++, {
                        var __0 = (_got.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value), __1 = (_want.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
var _wf = __1, _gf = __0;
                        _internal.runtime_test.Runtime_test__logDiff._logDiff(_t, ((_prefix + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _typ.field(_i).name?.__copy__() : stdgo.GoString)?.__copy__(), _gf?.__copy__(), _wf?.__copy__());
                    });
                };
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _t.fatal(stdgo.Go.toInterface(("not implemented: logDiff for map" : stdgo.GoString)));
            } else {
                if (_got.interface_() != (_want.interface_())) {
                    _t.logf(("%s: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_prefix), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
        };
    }
