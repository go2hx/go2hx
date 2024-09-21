package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function benchmarkSelect(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _channel = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        if (_channel != null) _channel.__close__();
        var _cases:stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_channel))?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
            });
        };
        for (__6 => _numCases in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_numCases)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var __blank__ = stdgo._internal.reflect.Reflect_select.select((_cases.__slice__(0, _numCases) : stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>));
                    });
                };
            });
        };
    }
