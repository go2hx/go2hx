package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _testPoolDequeue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _d:stdgo._internal.sync.Sync_PoolDequeue.PoolDequeue):Void {
        {};
        var n:stdgo.GoInt = (2000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            n = (1000 : stdgo.GoInt);
        };
        var _have = (new stdgo.Slice<stdgo.GoInt32>((n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _stop:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        var _record = (function(_val:stdgo.GoInt):Void {
            stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(stdgo.Go.pointer(_have[(_val : stdgo.GoInt)]), (1 : stdgo.GoInt32));
            if (_val == ((n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(stdgo.Go.pointer(_stop), (1 : stdgo.GoInt32));
            };
        } : stdgo.GoInt -> Void);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _fail = (0 : stdgo.GoInt);
                        while (stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(_stop)) == ((0 : stdgo.GoInt32))) {
                            var __tmp__ = _d.popTail(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _fail = (0 : stdgo.GoInt);
                                _record((stdgo.Go.typeAssert((_val : stdgo.GoInt)) : stdgo.GoInt));
                            } else {
                                {
                                    _fail++;
                                    if ((_fail % (100 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                        stdgo._internal.runtime.Runtime_gosched.gosched();
                                    };
                                };
                            };
                        };
                        _wg.done();
                    };
                    a();
                });
            });
        };
        var _nPopHead = (0 : stdgo.GoInt);
        _wg.add((1 : stdgo.GoInt));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < n : Bool), _j++, {
                        while (!_d.pushHead(stdgo.Go.toInterface(_j))) {
                            stdgo._internal.runtime.Runtime_gosched.gosched();
                        };
                        if ((_j % (10 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                            var __tmp__ = _d.popHead(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _nPopHead++;
                                _record((stdgo.Go.typeAssert((_val : stdgo.GoInt)) : stdgo.GoInt));
                            };
                        };
                    });
                };
                _wg.done();
            };
            a();
        });
        _wg.wait_();
        for (_i => _count in _have) {
            if (_count != ((1 : stdgo.GoInt32))) {
                _t.errorf(("expected have[%d] = 1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_count));
            };
        };
        if ((!stdgo._internal.testing.Testing_short.short() && (_nPopHead == (0 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("popHead never succeeded" : stdgo.GoString));
        };
    }
