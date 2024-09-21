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
function _testConcurrentReadsAfterGrowth(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _useReflect:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            if (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) == ((1 : stdgo.GoInt))) {
                {
                    var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((16 : stdgo.GoInt));
                    __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
                };
            };
            var _numLoop = (10 : stdgo.GoInt);
            var _numGrowStep = (250 : stdgo.GoInt);
            var _numReader = (16 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                {
                    final __tmp__0 = (2 : stdgo.GoInt);
                    final __tmp__1 = (100 : stdgo.GoInt);
                    _numLoop = __tmp__0;
                    _numGrowStep = __tmp__1;
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _numLoop : Bool), _i++, {
                    var _m = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                    {
                        var _gs = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_gs < _numGrowStep : Bool), _gs++, {
                            _m[_gs] = _gs;
                            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
                            _wg.add((_numReader * (2 : stdgo.GoInt) : stdgo.GoInt));
                            {
                                var _nr = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_nr < _numReader : Bool), _nr++, {
                                    stdgo.Go.routine(() -> {
                                        var a = function():Void {
                                            var __deferstack__:Array<Void -> Void> = [];
                                            try {
                                                __deferstack__.unshift(() -> _wg.done());
                                                for (_ => _ in _m) {};
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
                                    stdgo.Go.routine(() -> {
                                        var a = function():Void {
                                            var __deferstack__:Array<Void -> Void> = [];
                                            try {
                                                __deferstack__.unshift(() -> _wg.done());
                                                {
                                                    var _key = (0 : stdgo.GoInt);
                                                    stdgo.Go.cfor((_key < _gs : Bool), _key++, {
                                                        var __blank__ = (_m[_key] ?? (0 : stdgo.GoInt));
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
                                        a();
                                    });
                                    if (_useReflect) {
                                        _wg.add((1 : stdgo.GoInt));
                                        stdgo.Go.routine(() -> {
                                            var a = function():Void {
                                                var __deferstack__:Array<Void -> Void> = [];
                                                try {
                                                    __deferstack__.unshift(() -> _wg.done());
                                                    var _mv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                                                    var _keys = _mv.mapKeys();
                                                    for (__26 => _k in _keys) {
                                                        _mv.mapIndex(_k?.__copy__());
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
                                            a();
                                        });
                                    };
                                });
                            };
                            _wg.wait_();
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
    }
