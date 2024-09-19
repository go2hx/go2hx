package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!_internal.unicode_test.Unicode_test__calibrate._calibrate.value) {
            return;
        };
        if (false) {
            stdgo._internal.fmt.Fmt_printf.printf(("warning: running calibration on %s\n" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
        var _n = (stdgo._internal.sort.Sort_search.search((64 : stdgo.GoInt), function(_n:stdgo.GoInt):Bool {
            var _tab = _internal.unicode_test.Unicode_test__fakeTable._fakeTable(_n);
            var _blinear = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _tab = _tab;
                var _max = ((_n * (5 : stdgo.GoInt) : stdgo.GoInt) + (20 : stdgo.GoInt) : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j <= _max : Bool), _j++, {
                                _internal.unicode_test.Unicode_test__linear._linear(_tab, (_j : stdgo.GoUInt16));
                            });
                        };
                    });
                };
            };
            var _bbinary = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _tab = _tab;
                var _max = ((_n * (5 : stdgo.GoInt) : stdgo.GoInt) + (20 : stdgo.GoInt) : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j <= _max : Bool), _j++, {
                                _internal.unicode_test.Unicode_test__binary._binary(_tab, (_j : stdgo.GoUInt16));
                            });
                        };
                    });
                };
            };
            var _bmlinear = (stdgo._internal.testing.Testing_benchmark.benchmark(_blinear)?.__copy__() : stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult);
            var _bmbinary = (stdgo._internal.testing.Testing_benchmark.benchmark(_bbinary)?.__copy__() : stdgo._internal.testing.Testing_BenchmarkResult.BenchmarkResult);
            stdgo._internal.fmt.Fmt_printf.printf(("n=%d: linear=%d binary=%d\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bmlinear.nsPerOp()), stdgo.Go.toInterface(_bmbinary.nsPerOp()));
            return ((_bmlinear.nsPerOp() * (100i64 : stdgo.GoInt64) : stdgo.GoInt64) > (_bmbinary.nsPerOp() * (110i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool);
        }) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_printf.printf(("calibration: linear cutoff = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
