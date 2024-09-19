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
function benchmarkConvT2Ezero(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("zero" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("16" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zero16._zero16);
                    });
                };
            });
            _b.run(("32" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zero32._zero32);
                    });
                };
            });
            _b.run(("64" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zero64._zero64);
                    });
                };
            });
            _b.run(("str" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zerostr._zerostr);
                    });
                };
            });
            _b.run(("slice" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zeroslice._zeroslice);
                    });
                };
            });
            _b.run(("big" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__zerobig._zerobig);
                    });
                };
            });
        });
        _b.run(("nonzero" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("str" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__nzstr._nzstr);
                    });
                };
            });
            _b.run(("slice" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__nzslice._nzslice);
                    });
                };
            });
            _b.run(("big" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__nzbig._nzbig);
                    });
                };
            });
        });
        _b.run(("smallint" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("16" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__one16._one16);
                    });
                };
            });
            _b.run(("32" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__one32._one32);
                    });
                };
            });
            _b.run(("64" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__one64._one64);
                    });
                };
            });
        });
        _b.run(("largeint" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("16" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__thousand16._thousand16);
                    });
                };
            });
            _b.run(("32" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__thousand32._thousand32);
                    });
                };
            });
            _b.run(("64" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__thousand64._thousand64);
                    });
                };
            });
        });
    }
