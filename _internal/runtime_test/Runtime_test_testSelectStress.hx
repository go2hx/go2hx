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
function testSelectStress(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((10 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _c:stdgo.GoArray<stdgo.Chan<stdgo.GoInt>> = new stdgo.GoArray<stdgo.Chan<stdgo.GoInt>>(4, 4, ...[for (i in 0 ... 4) (null : stdgo.Chan<stdgo.GoInt>)]);
            _c[(0 : stdgo.GoInt)] = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            _c[(1 : stdgo.GoInt)] = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            _c[(2 : stdgo.GoInt)] = (new stdgo.Chan<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            _c[(3 : stdgo.GoInt)] = (new stdgo.Chan<stdgo.GoInt>((3 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var n = ((100000 : stdgo.GoInt) : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                n = (n / ((10 : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add((10 : stdgo.GoInt));
            {
                var _k = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_k < (4 : stdgo.GoInt) : Bool), _k++, {
                    var _k = (_k : stdgo.GoInt);
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < n : Bool), _i++, {
                                        _c[(_k : stdgo.GoInt)].__send__((0 : stdgo.GoInt));
                                    });
                                };
                                _wg.done();
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
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < n : Bool), _i++, {
                                        _c[(_k : stdgo.GoInt)].__get__();
                                    });
                                };
                                _wg.done();
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
                });
            };
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _n:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
                        var _c1 = _c?.__copy__();
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < ((4 : stdgo.GoInt) * n : stdgo.GoInt) : Bool), _i++, {
                                {
                                    var __select__ = true;
                                    while (__select__) {
                                        if (_c1[(3 : stdgo.GoInt)] != null && _c1[(3 : stdgo.GoInt)].__isSend__()) {
                                            __select__ = false;
                                            {
                                                _c1[(3 : stdgo.GoInt)].__send__((0 : stdgo.GoInt));
                                                {
                                                    _n[(3 : stdgo.GoInt)]++;
                                                    if (_n[(3 : stdgo.GoInt)] == (n)) {
                                                        _c1[(3 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        } else if (_c1[(2 : stdgo.GoInt)] != null && _c1[(2 : stdgo.GoInt)].__isSend__()) {
                                            __select__ = false;
                                            {
                                                _c1[(2 : stdgo.GoInt)].__send__((0 : stdgo.GoInt));
                                                {
                                                    _n[(2 : stdgo.GoInt)]++;
                                                    if (_n[(2 : stdgo.GoInt)] == (n)) {
                                                        _c1[(2 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        } else if (_c1[(0 : stdgo.GoInt)] != null && _c1[(0 : stdgo.GoInt)].__isSend__()) {
                                            __select__ = false;
                                            {
                                                _c1[(0 : stdgo.GoInt)].__send__((0 : stdgo.GoInt));
                                                {
                                                    _n[(0 : stdgo.GoInt)]++;
                                                    if (_n[(0 : stdgo.GoInt)] == (n)) {
                                                        _c1[(0 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        } else if (_c1[(1 : stdgo.GoInt)] != null && _c1[(1 : stdgo.GoInt)].__isSend__()) {
                                            __select__ = false;
                                            {
                                                _c1[(1 : stdgo.GoInt)].__send__((0 : stdgo.GoInt));
                                                {
                                                    _n[(1 : stdgo.GoInt)]++;
                                                    if (_n[(1 : stdgo.GoInt)] == (n)) {
                                                        _c1[(1 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        };
                                        #if !js Sys.sleep(0.01) #else null #end;
                                        stdgo._internal.internal.Async.tick();
                                    };
                                };
                            });
                        };
                        _wg.done();
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
                        var _n:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
                        var _c1 = _c?.__copy__();
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < ((4 : stdgo.GoInt) * n : stdgo.GoInt) : Bool), _i++, {
                                {
                                    var __select__ = true;
                                    while (__select__) {
                                        if (_c1[(0 : stdgo.GoInt)] != null && _c1[(0 : stdgo.GoInt)].__isGet__()) {
                                            __select__ = false;
                                            {
                                                _c1[(0 : stdgo.GoInt)].__get__();
                                                {
                                                    _n[(0 : stdgo.GoInt)]++;
                                                    if (_n[(0 : stdgo.GoInt)] == (n)) {
                                                        _c1[(0 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        } else if (_c1[(1 : stdgo.GoInt)] != null && _c1[(1 : stdgo.GoInt)].__isGet__()) {
                                            __select__ = false;
                                            {
                                                _c1[(1 : stdgo.GoInt)].__get__();
                                                {
                                                    _n[(1 : stdgo.GoInt)]++;
                                                    if (_n[(1 : stdgo.GoInt)] == (n)) {
                                                        _c1[(1 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        } else if (_c1[(2 : stdgo.GoInt)] != null && _c1[(2 : stdgo.GoInt)].__isGet__()) {
                                            __select__ = false;
                                            {
                                                _c1[(2 : stdgo.GoInt)].__get__();
                                                {
                                                    _n[(2 : stdgo.GoInt)]++;
                                                    if (_n[(2 : stdgo.GoInt)] == (n)) {
                                                        _c1[(2 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        } else if (_c1[(3 : stdgo.GoInt)] != null && _c1[(3 : stdgo.GoInt)].__isGet__()) {
                                            __select__ = false;
                                            {
                                                _c1[(3 : stdgo.GoInt)].__get__();
                                                {
                                                    _n[(3 : stdgo.GoInt)]++;
                                                    if (_n[(3 : stdgo.GoInt)] == (n)) {
                                                        _c1[(3 : stdgo.GoInt)] = (null : stdgo.Chan<stdgo.GoInt>);
                                                    };
                                                };
                                            };
                                        };
                                        #if !js Sys.sleep(0.01) #else null #end;
                                        stdgo._internal.internal.Async.tick();
                                    };
                                };
                            });
                        };
                        _wg.done();
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
    }
