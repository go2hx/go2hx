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
function testMinMaxStringTies(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = ("xxx" : stdgo.GoString);
        var _x = stdgo._internal.strings.Strings_split.split(_s?.__copy__(), stdgo.Go.str()?.__copy__());
        var _test = (function(_i:stdgo.GoInt, _j:stdgo.GoInt, _k:stdgo.GoInt):Void {
            {
                var _z = (_internal.runtime_test.Runtime_test__min._min(_x[(_i : stdgo.GoInt)], _x[(_j : stdgo.GoInt)], _x[(_k : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
                if (stdgo._internal.unsafe.Unsafe_stringData.stringData(_z?.__copy__()) != (stdgo._internal.unsafe.Unsafe_stringData.stringData(_x[(_i : stdgo.GoInt)]?.__copy__()))) {
                    _t.errorf(("min(x[%v], x[%v], x[%v]) = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe_stringData.stringData(_z?.__copy__())), stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe_stringData.stringData(_x[(_i : stdgo.GoInt)]?.__copy__())));
                };
            };
            {
                var _z = (_internal.runtime_test.Runtime_test__max._max(_x[(_i : stdgo.GoInt)], _x[(_j : stdgo.GoInt)], _x[(_k : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
                if (stdgo._internal.unsafe.Unsafe_stringData.stringData(_z?.__copy__()) != (stdgo._internal.unsafe.Unsafe_stringData.stringData(_x[(_i : stdgo.GoInt)]?.__copy__()))) {
                    _t.errorf(("max(x[%v], x[%v], x[%v]) = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe_stringData.stringData(_z?.__copy__())), stdgo.Go.toInterface(stdgo._internal.unsafe.Unsafe_stringData.stringData(_x[(_i : stdgo.GoInt)]?.__copy__())));
                };
            };
        } : (stdgo.GoInt, stdgo.GoInt, stdgo.GoInt) -> Void);
        _test((0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt));
        _test((0 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        _test((1 : stdgo.GoInt), (0 : stdgo.GoInt), (2 : stdgo.GoInt));
        _test((1 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt));
        _test((2 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt));
        _test((2 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
