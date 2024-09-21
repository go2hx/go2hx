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
function benchmarkAppendInPlace(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("NoGrow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {};
            _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__sByte._sByte = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (128 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__sByte._sByte = (_internal.runtime_test.Runtime_test__sByte._sByte.__append__((119 : stdgo.GoUInt8)));
                            });
                        };
                    });
                };
            });
            _b.run(("1Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s1Ptr._s1Ptr = (new stdgo.Slice<stdgo.GoUIntptr>((128 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (128 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s1Ptr._s1Ptr = (_internal.runtime_test.Runtime_test__s1Ptr._s1Ptr.__append__((119 : stdgo.GoUIntptr)));
                            });
                        };
                    });
                };
            });
            _b.run(("2Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s2Ptr._s2Ptr = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUIntptr)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (128 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s2Ptr._s2Ptr = (_internal.runtime_test.Runtime_test__s2Ptr._s2Ptr.__append__((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(119 : stdgo.GoUIntptr), (136 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>)));
                            });
                        };
                    });
                };
            });
            _b.run(("3Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s3Ptr._s3Ptr = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUIntptr>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUIntptr)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (128 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s3Ptr._s3Ptr = (_internal.runtime_test.Runtime_test__s3Ptr._s3Ptr.__append__((new stdgo.GoArray<stdgo.GoUIntptr>(3, 3, ...[(119 : stdgo.GoUIntptr), (136 : stdgo.GoUIntptr), (153 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>)));
                            });
                        };
                    });
                };
            });
            _b.run(("4Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s4Ptr._s4Ptr = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUIntptr>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUIntptr)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (128 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s4Ptr._s4Ptr = (_internal.runtime_test.Runtime_test__s4Ptr._s4Ptr.__append__((new stdgo.GoArray<stdgo.GoUIntptr>(4, 4, ...[(119 : stdgo.GoUIntptr), (136 : stdgo.GoUIntptr), (153 : stdgo.GoUIntptr), (170 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>)));
                            });
                        };
                    });
                };
            });
        });
        _b.run(("Grow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {};
            _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__sByte._sByte = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__sByte._sByte = (_internal.runtime_test.Runtime_test__sByte._sByte.__append__((119 : stdgo.GoUInt8)));
                                _internal.runtime_test.Runtime_test__sByte._sByte = (_internal.runtime_test.Runtime_test__sByte._sByte.__slice__(0, _internal.runtime_test.Runtime_test__sByte._sByte.capacity) : stdgo.Slice<stdgo.GoUInt8>);
                            });
                        };
                    });
                };
            });
            _b.run(("1Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s1Ptr._s1Ptr = (new stdgo.Slice<stdgo.GoUIntptr>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s1Ptr._s1Ptr = (_internal.runtime_test.Runtime_test__s1Ptr._s1Ptr.__append__((119 : stdgo.GoUIntptr)));
                                _internal.runtime_test.Runtime_test__s1Ptr._s1Ptr = (_internal.runtime_test.Runtime_test__s1Ptr._s1Ptr.__slice__(0, _internal.runtime_test.Runtime_test__s1Ptr._s1Ptr.capacity) : stdgo.Slice<stdgo.GoUIntptr>);
                            });
                        };
                    });
                };
            });
            _b.run(("2Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s2Ptr._s2Ptr = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUIntptr)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s2Ptr._s2Ptr = (_internal.runtime_test.Runtime_test__s2Ptr._s2Ptr.__append__((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[(119 : stdgo.GoUIntptr), (136 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>)));
                                _internal.runtime_test.Runtime_test__s2Ptr._s2Ptr = (_internal.runtime_test.Runtime_test__s2Ptr._s2Ptr.__slice__(0, _internal.runtime_test.Runtime_test__s2Ptr._s2Ptr.capacity) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                            });
                        };
                    });
                };
            });
            _b.run(("3Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s3Ptr._s3Ptr = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUIntptr>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUIntptr)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s3Ptr._s3Ptr = (_internal.runtime_test.Runtime_test__s3Ptr._s3Ptr.__append__((new stdgo.GoArray<stdgo.GoUIntptr>(3, 3, ...[(119 : stdgo.GoUIntptr), (136 : stdgo.GoUIntptr), (153 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>)));
                                _internal.runtime_test.Runtime_test__s3Ptr._s3Ptr = (_internal.runtime_test.Runtime_test__s3Ptr._s3Ptr.__slice__(0, _internal.runtime_test.Runtime_test__s3Ptr._s3Ptr.capacity) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                            });
                        };
                    });
                };
            });
            _b.run(("4Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__s4Ptr._s4Ptr = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUIntptr>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUIntptr)])]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                                _internal.runtime_test.Runtime_test__s4Ptr._s4Ptr = (_internal.runtime_test.Runtime_test__s4Ptr._s4Ptr.__append__((new stdgo.GoArray<stdgo.GoUIntptr>(4, 4, ...[(119 : stdgo.GoUIntptr), (136 : stdgo.GoUIntptr), (153 : stdgo.GoUIntptr), (170 : stdgo.GoUIntptr)]) : stdgo.GoArray<stdgo.GoUIntptr>)));
                                _internal.runtime_test.Runtime_test__s4Ptr._s4Ptr = (_internal.runtime_test.Runtime_test__s4Ptr._s4Ptr.__slice__(0, _internal.runtime_test.Runtime_test__s4Ptr._s4Ptr.capacity) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
                            });
                        };
                    });
                };
            });
        });
    }
