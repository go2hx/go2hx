package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testPoolStress(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var n = ((1000000 : stdgo.GoInt) : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            n = (n / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _v:stdgo.AnyInterface = stdgo.Go.toInterface((0 : stdgo.GoInt));
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < n : Bool), _j++, {
                                if (_v == null) {
                                    _v = stdgo.Go.toInterface((0 : stdgo.GoInt));
                                };
                                _p.put(_v);
                                _v = _p.get();
                                if (((_v != null) && ((stdgo.Go.typeAssert((_v : stdgo.GoInt)) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                                    _t.errorf(("expect 0, got %v" : stdgo.GoString), _v);
                                    break;
                                };
                            });
                        };
                        _done.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _done.__get__();
            });
        };
    }
