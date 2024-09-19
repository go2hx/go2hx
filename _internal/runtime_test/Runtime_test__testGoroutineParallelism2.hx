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
function _testGoroutineParallelism2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _load:Bool, _netpoll:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.runtime.Runtime_numCPU.numCPU() == ((1 : stdgo.GoInt))) {
                _t.skip(stdgo.Go.toInterface(("skipping on uniprocessor" : stdgo.GoString)));
            };
            var p = (4 : stdgo.GoInt);
            var n = (10 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                n = (3 : stdgo.GoInt);
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(p);
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            {
                var _try = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_try < n : Bool), _try++, {
                    if (_load) {
                        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                        var _x = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        {
                            var _p = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_p < p : Bool), _p++, {
                                stdgo.Go.routine(() -> {
                                    var a = function():Void {
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            if (stdgo._internal.sync.atomic_.Atomic__addUint32.addUint32(stdgo.Go.pointer(_x), (1u32 : stdgo.GoUInt32)) == ((p : stdgo.GoUInt32))) {
                                                _done.__send__(true);
                                                {
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    return;
                                                };
                                            };
                                            while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_x)) != ((p : stdgo.GoUInt32))) {};
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
                        _done.__get__();
                    };
                    if (_netpoll) {
                        var _laddr = ("localhost:0" : stdgo.GoString);
                        if (false) {
                            _laddr = ("127.0.0.1:0" : stdgo.GoString);
                        };
                        var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), _laddr?.__copy__()), _ln:stdgo._internal.net.Net_Listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            __deferstack__.unshift(() -> _ln.close());
                        };
                    };
                    var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                    var _x = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    {
                        var _p = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_p < (p / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _p++, {
                            stdgo.Go.routine(() -> {
                                var a = function(_p:stdgo.GoInt):Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        {
                                            var _p2 = (0 : stdgo.GoInt);
                                            stdgo.Go.cfor((_p2 < (2 : stdgo.GoInt) : Bool), _p2++, {
                                                stdgo.Go.routine(() -> {
                                                    var a = function(_p2:stdgo.GoInt):Void {
                                                        var __deferstack__:Array<Void -> Void> = [];
                                                        try {
                                                            {
                                                                var _i = (0 : stdgo.GoInt);
                                                                stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                                                                    var _expected = ((((p * _i : stdgo.GoInt) + (_p * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _p2 : stdgo.GoInt) : stdgo.GoUInt32);
                                                                    while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_x)) != (_expected)) {};
                                                                    stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_x), (_expected + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                                                                });
                                                            };
                                                            _done.__send__(true);
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
                                                    a(_p2);
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
                                };
                                a(_p);
                            });
                        });
                    };
                    {
                        var _p = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_p < p : Bool), _p++, {
                            _done.__get__();
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
