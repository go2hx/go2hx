package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testDeepEqualAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__7 => _tt in _internal.reflect_test.Reflect_test__deepEqualPerfTests._deepEqualPerfTests) {
            _t.run((stdgo._internal.reflect.Reflect_valueOf.valueOf(_tt._x).type().string() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _got = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                    if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_tt._x, _tt._y)) {
                        _t.errorf(("DeepEqual(%v, %v)=false" : stdgo.GoString), _tt._x, _tt._y);
                    };
                }) : stdgo.GoFloat64);
                if ((_got : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("DeepEqual(%v, %v) allocated %d times" : stdgo.GoString), _tt._x, _tt._y, stdgo.Go.toInterface((_got : stdgo.GoInt)));
                };
            });
        };
    }
