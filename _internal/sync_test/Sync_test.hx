package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:keep var __init_go2hx__ = {
        try {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                if (((stdgo._internal.os.Os_args.args.length == (3 : stdgo.GoInt)) && (stdgo._internal.os.Os_args.args[(1 : stdgo.GoInt)] == ("TESTMISUSE" : stdgo.GoString)) : Bool)) {
                    for (__4 => _test in _internal.sync_test.Sync_test__misuseTests._misuseTests) {
                        if (_test._name == (stdgo._internal.os.Os_args.args[((2 : stdgo.GoInt) : stdgo.GoInt)])) {
                            {
                                var a = function():Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        __deferstack__.unshift(() -> {
                                            var a = function():Void {
                                                var __deferstack__:Array<Void -> Void> = [];
                                                try {
                                                    ({
                                                        final r = stdgo.Go.recover_exception;
                                                        stdgo.Go.recover_exception = null;
                                                        r;
                                                    });
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
                                        _test._f();
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
                            };
                            stdgo._internal.fmt.Fmt_printf.printf(("test completed\n" : stdgo.GoString));
                            Sys.exit((0 : stdgo.GoInt));
                        };
                    };
                    stdgo._internal.fmt.Fmt_printf.printf(("unknown test\n" : stdgo.GoString));
                    Sys.exit((0 : stdgo.GoInt));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    throw "__return__";
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
                throw "__return__";
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
