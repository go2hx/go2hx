package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in _internal.reflect_test.Reflect_test__appendTests._appendTests) {
            var __0 = (_test._orig.length : stdgo.GoInt), __1 = (_test._extra.length : stdgo.GoInt);
var _extraLen = __1, _origLen = __0;
            var _want = (_test._orig.__append__(...(_test._extra : Array<stdgo.GoInt>)));
            var _e0 = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>((_test._extra.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_test._extra.length : stdgo.GoInt).toBasic() > 0 ? (_test._extra.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
            for (_j => _e in _test._extra) {
                _e0[(_j : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_e))?.__copy__();
            };
            var _e1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_test._extra))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _a0 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_test._orig) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _have0 = (stdgo._internal.reflect.Reflect_append.append(_a0?.__copy__(), ...(_e0 : Array<stdgo._internal.reflect.Reflect_Value.Value>))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_have0.canAddr()) {
                _t.errorf(("Append #%d: have slice should not be addressable" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_have0.interface_(), stdgo.Go.toInterface(_want))) {
                _t.errorf(("Append #%d: have %v, want %v (%p %p)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_have0)), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_test._orig), _have0.interface_());
            };
            if (_a0.len() != ((_test._orig.length))) {
                _t.errorf(("Append #%d: a0.Len: have %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a0.len()), stdgo.Go.toInterface(_origLen));
            };
            if ((_test._orig.length) != (_origLen)) {
                _t.errorf(("Append #%d origLen: have %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_test._orig.length)), stdgo.Go.toInterface(_origLen));
            };
            if ((_test._extra.length) != (_extraLen)) {
                _t.errorf(("Append #%d extraLen: have %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_test._extra.length)), stdgo.Go.toInterface(_extraLen));
            };
            var _a1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_test._orig) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _have1 = (stdgo._internal.reflect.Reflect_appendSlice.appendSlice(_a1?.__copy__(), _e1?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (_have1.canAddr()) {
                _t.errorf(("AppendSlice #%d: have slice should not be addressable" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_have1.interface_(), stdgo.Go.toInterface(_want))) {
                _t.errorf(("AppendSlice #%d: have %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_have1)), stdgo.Go.toInterface(_want));
            };
            if (_a1.len() != ((_test._orig.length))) {
                _t.errorf(("AppendSlice #%d: a1.Len: have %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a0.len()), stdgo.Go.toInterface(_origLen));
            };
            if ((_test._orig.length) != (_origLen)) {
                _t.errorf(("AppendSlice #%d origLen: have %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_test._orig.length)), stdgo.Go.toInterface(_origLen));
            };
            if ((_test._extra.length) != (_extraLen)) {
                _t.errorf(("AppendSlice #%d extraLen: have %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_test._extra.length)), stdgo.Go.toInterface(_extraLen));
            };
            var _ax = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : _test._orig } : _internal.reflect_test.Reflect_test_T__struct_45.T__struct_45)))).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("using unexported field" : stdgo.GoString), function():Void {
                stdgo._internal.reflect.Reflect_append.append(_ax?.__copy__(), ...(_e0 : Array<stdgo._internal.reflect.Reflect_Value.Value>));
            });
            _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("using unexported field" : stdgo.GoString), function():Void {
                stdgo._internal.reflect.Reflect_appendSlice.appendSlice(_ax?.__copy__(), _e1?.__copy__());
            });
        };
    }
