package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testHammer32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _n = (100000 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _n = (1000 : stdgo.GoInt);
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            for (_name => _testf in _internal.sync.atomic_test.Atomic_test__hammer32._hammer32) {
                var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _val:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            var __deferstack__:Array<Void -> Void> = [];
                                            try {
                                                {
                                                    var _err = ({
                                                        final r = stdgo.Go.recover_exception;
                                                        stdgo.Go.recover_exception = null;
                                                        r;
                                                    } : stdgo.AnyInterface);
                                                    if (_err != null) {
                                                        _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString)));
                                                    };
                                                };
                                                _c.__send__((1 : stdgo.GoInt));
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
                                    _testf(stdgo.Go.pointer(_val), _n);
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
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                        _c.__get__();
                    });
                };
                if ((!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_name?.__copy__(), ("Swap" : stdgo.GoString)) && (_val != ((_n : stdgo.GoUInt32) * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : Bool)) {
                    _t.fatalf(("%s: val=%d want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_n * (4 : stdgo.GoInt) : stdgo.GoInt)));
                };
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
