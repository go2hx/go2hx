package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkDeepEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__6 => _bb in _internal.reflect_test.Reflect_test__deepEqualPerfTests._deepEqualPerfTests) {
            _b.run((stdgo._internal.reflect.Reflect_valueOf.valueOf(_bb._x).type().string() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.reflect_test.Reflect_test__sink._sink = stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_bb._x, _bb._y));
                    });
                };
            });
        };
    }
