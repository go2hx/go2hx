package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testConcurrentRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _m = _new(stdgo._internal.sync.Sync_map_.map_);
            {
                var _n = ((1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                stdgo.Go.cfor((_n <= (1024i64 : stdgo.GoInt64) : Bool), _n++, {
                    _m.store(stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_n : stdgo.GoInt64)));
                });
            };
            var _done = (new stdgo.Chan<_internal.sync_test.Sync_test_T_httpPkg.T_httpPkg>(0, () -> ({} : _internal.sync_test.Sync_test_T_httpPkg.T_httpPkg)) : stdgo.Chan<_internal.sync_test.Sync_test_T_httpPkg.T_httpPkg>);
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        if (_done != null) _done.__close__();
                        _wg.wait_();
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
                a();
            });
            {
                var _g = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt64);
                stdgo.Go.cfor((_g > (0i64 : stdgo.GoInt64) : Bool), _g--, {
                    var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_g));
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_g:stdgo.GoInt64):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                {
                                    var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                                    stdgo.Go.cfor(true, _i++, {
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if (_done != null && _done.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _done.__get__();
                                                        {
                                                            {
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                return;
                                                            };
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {};
                                                };
                                                #if !js Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                        };
                                        {
                                            var _n = ((1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                                            stdgo.Go.cfor((_n < (1024i64 : stdgo.GoInt64) : Bool), _n++, {
                                                if (_r.int63n((1024i64 : stdgo.GoInt64)) == ((0i64 : stdgo.GoInt64))) {
                                                    _m.store(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_n * _i : stdgo.GoInt64) * _g : stdgo.GoInt64)));
                                                } else {
                                                    _m.load(stdgo.Go.toInterface(_n));
                                                };
                                            });
                                        };
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
                        a(_g);
                    });
                });
            };
            var _iters = (1024 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _iters = (16 : stdgo.GoInt);
            };
            {
                var _n = (_iters : stdgo.GoInt);
                stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                    var _seen = ({
                        final x = new stdgo.GoMap.GoInt64Map<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt64, Bool>);
                    _m.range(function(_ki:stdgo.AnyInterface, _vi:stdgo.AnyInterface):Bool {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            var __0 = (stdgo.Go.typeAssert((_ki : stdgo.GoInt64)) : stdgo.GoInt64), __1 = (stdgo.Go.typeAssert((_vi : stdgo.GoInt64)) : stdgo.GoInt64);
var _v = __1, _k = __0;
                            if ((_v % _k : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                                _t.fatalf(("while Storing multiples of %v, Range saw value %v" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
                            };
                            if ((_seen[_k] ?? false)) {
                                _t.fatalf(("Range visited key %v twice" : stdgo.GoString), stdgo.Go.toInterface(_k));
                            };
                            _seen[_k] = true;
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return true;
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return false;
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
                            return false;
                        };
                    });
                    if ((_seen.length) != ((1024 : stdgo.GoInt))) {
                        _t.fatalf(("Range visited %v elements of %v-element Map" : stdgo.GoString), stdgo.Go.toInterface((_seen.length)), stdgo.Go.toInterface((1024 : stdgo.GoInt)));
                    };
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
