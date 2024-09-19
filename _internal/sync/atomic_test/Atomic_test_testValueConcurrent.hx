package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testValueConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            var _tests = (new stdgo.Slice<stdgo.Slice<stdgo.AnyInterface>>(4, 4, ...[(new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((65535 : stdgo.GoUInt16)), stdgo.Go.toInterface((513 : stdgo.GoUInt16)), stdgo.Go.toInterface((1027 : stdgo.GoUInt16))]) : stdgo.Slice<stdgo.AnyInterface>), (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface((0u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((-1u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((131073u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((262147u32 : stdgo.GoUInt32))]) : stdgo.Slice<stdgo.AnyInterface>), (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface((0i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((8589934593i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((17179869187i64 : stdgo.GoUInt64))]) : stdgo.Slice<stdgo.AnyInterface>), (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface(new stdgo.GoComplex128((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))), stdgo.Go.toInterface(new stdgo.GoComplex128((1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64))), stdgo.Go.toInterface(new stdgo.GoComplex128((3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64))), stdgo.Go.toInterface(new stdgo.GoComplex128((5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64)))]) : stdgo.Slice<stdgo.AnyInterface>)]) : stdgo.Slice<stdgo.Slice<stdgo.AnyInterface>>);
            var _p = ((4 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
            var n = ((100000 : stdgo.GoInt) : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _p = (_p / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                n = (1000 : stdgo.GoInt);
            };
            for (__34 => _test in _tests) {
                var _v:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
                var _done = (new stdgo.Chan<Bool>((_p : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _p : Bool), _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                stdgo._internal.internal.Macro.controlFlow({
                                    var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.math.rand.Rand_int63.int63()));
                                    var _expected = (true : Bool);
                                    @:label("loop") {
                                        var _j = (0 : stdgo.GoInt);
                                        stdgo.Go.cfor((_j < n : Bool), _j++, {
                                            var _x = (_test[(_r.intn((_test.length)) : stdgo.GoInt)] : stdgo.AnyInterface);
                                            _v.store(_x);
                                            _x = _v.load();
                                            for (__35 => _x1 in _test) {
                                                if (_x == (_x1)) {
                                                    @:jump("loop") continue;
                                                };
                                            };
                                            _t.logf(("loaded unexpected value %+v, want %+v" : stdgo.GoString), _x, stdgo.Go.toInterface(_test));
                                            _expected = false;
                                            break;
                                        });
                                    };
                                    _done.__send__(_expected);
                                });
                            };
                            a();
                        });
                    });
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _p : Bool), _i++, {
                        if (!_done.__get__()) {
                            _t.failNow();
                        };
                    });
                };
            };
        });
    }
