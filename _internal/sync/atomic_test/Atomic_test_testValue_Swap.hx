package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testValue_Swap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (_i => _tt in _internal.sync.atomic_test.Atomic_test_value_SwapTests.value_SwapTests) {
                _t.run(stdgo._internal.strconv.Strconv_itoa.itoa(_i)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _v:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
                        if (_tt._init != null) {
                            _v.store(_tt._init);
                        };
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    var _err = ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    } : stdgo.AnyInterface);
                                    if (((_tt._err == null) && (_err != null) : Bool)) {
                                        _t.errorf(("should not panic, got %v" : stdgo.GoString), _err);
                                    } else if (((_tt._err != null) && (_err == null) : Bool)) {
                                        _t.errorf(("should panic %v, got <nil>" : stdgo.GoString), _tt._err);
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
                        {
                            var _got = (_v.swap(_tt._new) : stdgo.AnyInterface);
                            if (_got != (_tt._want)) {
                                _t.errorf(("got %v, want %v" : stdgo.GoString), _got, _tt._want);
                            };
                        };
                        {
                            var _got = (_v.load() : stdgo.AnyInterface);
                            if (_got != (_tt._new)) {
                                _t.errorf(("got %v, want %v" : stdgo.GoString), _got, _tt._new);
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
