package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testValueSwapConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
        var _count:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _g:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        var __0:stdgo.GoUInt64 = (10000i64 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (10000i64 : stdgo.GoUInt64);
var _n = __1, _m = __0;
        if (stdgo._internal.testing.Testing_short.short()) {
            _m = (1000i64 : stdgo.GoUInt64);
            _n = (1000i64 : stdgo.GoUInt64);
        };
        {
            var _i = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            stdgo.Go.cfor((_i < (_m * _n : stdgo.GoUInt64) : Bool), _i = (_i + (_n) : stdgo.GoUInt64), {
                var _i = (_i : stdgo.GoUInt64);
                _g.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                        {
                            var _new = (_i : stdgo.GoUInt64);
                            stdgo.Go.cfor((_new < (_i + _n : stdgo.GoUInt64) : Bool), _new++, {
                                {
                                    var _old = (_v.swap(stdgo.Go.toInterface(_new)) : stdgo.AnyInterface);
                                    if (_old != null) {
                                        _c = (_c + ((stdgo.Go.typeAssert((_old : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                    };
                                };
                            });
                        };
                        stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(stdgo.Go.pointer(_count), _c);
                        _g.done();
                    };
                    a();
                });
            });
        };
        _g.wait_();
        {
            var __0 = (((((_m * _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * ((_m * _n : stdgo.GoUInt64)) : stdgo.GoUInt64) / (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1 = (_count + (stdgo.Go.typeAssert((_v.load() : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64);
var _got = __1, _want = __0;
            if (_got != (_want)) {
                _t.errorf(("sum from 0 to %d was %d, want %v" : stdgo.GoString), stdgo.Go.toInterface(((_m * _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
