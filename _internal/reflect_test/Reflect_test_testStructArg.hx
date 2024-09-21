package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testStructArg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var __0:_internal.reflect_test.Reflect_test_T_testStructArg___localname___padded_90290.T_testStructArg___localname___padded_90290 = ({} : _internal.reflect_test.Reflect_test_T_testStructArg___localname___padded_90290.T_testStructArg___localname___padded_90290), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __2:_internal.reflect_test.Reflect_test_T_testStructArg___localname___padded_90290.T_testStructArg___localname___padded_90290 = (new _internal.reflect_test.Reflect_test_T_testStructArg___localname___padded_90290.T_testStructArg___localname___padded_90290(("3" : stdgo.GoString), (4 : stdgo.GoInt32)) : _internal.reflect_test.Reflect_test_T_testStructArg___localname___padded_90290.T_testStructArg___localname___padded_90290), __3:stdgo.GoUInt32 = (5u32 : stdgo.GoUInt32);
var _wantB = __3, _wantA = __2, _gotB = __1, _gotA = __0;
        var _f = (function(_a:_internal.reflect_test.Reflect_test_T_testStructArg___localname___padded_90290.T_testStructArg___localname___padded_90290, _b:stdgo.GoUInt32):Void {
            {
                final __tmp__0 = _a?.__copy__();
                final __tmp__1 = _b;
                _gotA = __tmp__0;
                _gotB = __tmp__1;
            };
        } : (_internal.reflect_test.Reflect_test_T_testStructArg___localname___padded_90290.T_testStructArg___localname___padded_90290, stdgo.GoUInt32) -> Void);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_f)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_wantA))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_wantB))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if (((stdgo.Go.toInterface(_gotA) != stdgo.Go.toInterface(_wantA)) || (_gotB != _wantB) : Bool)) {
            _t.errorf(("function called with (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_gotA), stdgo.Go.toInterface(_gotB), stdgo.Go.toInterface(_wantA), stdgo.Go.toInterface(_wantB));
        };
    }
