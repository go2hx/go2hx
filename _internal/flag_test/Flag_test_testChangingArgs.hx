package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testChangingArgs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.flag.Flag_resetForTesting.resetForTesting(function():Void {
                _t.fatal(stdgo.Go.toInterface(("bad parse" : stdgo.GoString)));
            });
            var _oldArgs = stdgo._internal.os.Os_args.args;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        stdgo._internal.os.Os_args.args = _oldArgs;
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
            stdgo._internal.os.Os_args.args = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("cmd" : stdgo.GoString), ("-before" : stdgo.GoString), ("subcmd" : stdgo.GoString), ("-after" : stdgo.GoString), ("args" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _before = stdgo._internal.flag.Flag_bool_.bool_(("before" : stdgo.GoString), false, stdgo.Go.str()?.__copy__());
            {
                var _err = (stdgo._internal.flag.Flag_commandLine.commandLine.parse((stdgo._internal.os.Os_args.args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _cmd = (stdgo._internal.flag.Flag_arg.arg((0 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            stdgo._internal.os.Os_args.args = stdgo._internal.flag.Flag_args.args();
            var _after = stdgo._internal.flag.Flag_bool_.bool_(("after" : stdgo.GoString), false, stdgo.Go.str()?.__copy__());
            stdgo._internal.flag.Flag_parse.parse();
            var _args = stdgo._internal.flag.Flag_args.args();
            if (((((!_before.value || _cmd != (("subcmd" : stdgo.GoString)) : Bool) || !_after.value : Bool) || (_args.length) != ((1 : stdgo.GoInt)) : Bool) || (_args[(0 : stdgo.GoInt)] != ("args" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("expected true subcmd true [args] got %v %v %v %v" : stdgo.GoString), stdgo.Go.toInterface(_before.value), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_after.value), stdgo.Go.toInterface(_args));
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
