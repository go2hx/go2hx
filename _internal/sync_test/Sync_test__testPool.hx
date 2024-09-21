package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _testPool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _drain:Bool):Void {
        stdgo._internal.internal.Macro.controlFlow({
            var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
            {};
            @:label("loop") {
                var _try = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_try < (3 : stdgo.GoInt) : Bool), _try++, {
                    if (((_try == (1 : stdgo.GoInt)) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                        break;
                    };
                    var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _fin1 = __1, _fin = __0;
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                            var _v = _new(_internal.sync_test.Sync_test__string._string);
                            stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(function(_vv:stdgo.Pointer<stdgo.GoString>):Void {
                                stdgo._internal.sync.atomic_.Atomic__addUint32.addUint32(stdgo.Go.pointer(_fin), (1u32 : stdgo.GoUInt32));
                            }));
                            _p.put(stdgo.Go.toInterface(_v));
                        });
                    };
                    if (_drain) {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                _p.get();
                            });
                        };
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                            stdgo._internal.runtime.Runtime_gc.gc();
                            stdgo._internal.time.Time_sleep.sleep(((((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.time.Time_Duration.Duration) * (1000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration));
                            {
                                _fin1 = stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_fin));
                                if ((_fin1 >= (99u32 : stdgo.GoUInt32) : Bool)) {
                                    @:jump("loop") continue;
                                };
                            };
                        });
                    };
                    _t.fatalf(("only %v out of %v resources are finalized on try %v" : stdgo.GoString), stdgo.Go.toInterface(_fin1), stdgo.Go.toInterface((100 : stdgo.GoInt)), stdgo.Go.toInterface(_try));
                });
            };
        });
    }
