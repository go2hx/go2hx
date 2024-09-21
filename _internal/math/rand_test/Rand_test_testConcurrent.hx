package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            __deferstack__.unshift(() -> _wg.wait_());
            _wg.add((10 : stdgo.GoInt));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_i:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((997 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                {
                                    var _j = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_j < (10 : stdgo.GoInt) : Bool), _j++, {
                                        var _seed:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_expFloat64.expFloat64() : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_float32.float32() : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_float64.float64() : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_intn.intn(stdgo._internal.math.rand.Rand_int_.int_()) : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_int31n.int31n(stdgo._internal.math.rand.Rand_int31.int31()) : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_int63n.int63n(stdgo._internal.math.rand.Rand_int63.int63()) : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_normFloat64.normFloat64() : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_uint32.uint32() : stdgo.GoInt64)) : stdgo.GoInt64);
                                        _seed = (_seed + ((stdgo._internal.math.rand.Rand_uint64.uint64() : stdgo.GoInt64)) : stdgo.GoInt64);
                                        for (__16 => _p in stdgo._internal.math.rand.Rand_perm.perm((10 : stdgo.GoInt))) {
                                            _seed = (_seed + ((_p : stdgo.GoInt64)) : stdgo.GoInt64);
                                        };
                                        stdgo._internal.math.rand.Rand_read.read(_buf);
                                        for (__17 => _b in _buf) {
                                            _seed = (_seed + ((_b : stdgo.GoInt64)) : stdgo.GoInt64);
                                        };
                                        stdgo._internal.math.rand.Rand_seed.seed((((_i * _j : stdgo.GoInt) : stdgo.GoInt64) * _seed : stdgo.GoInt64));
                                    });
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a(_i);
                    });
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
