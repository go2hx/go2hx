package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testUsageOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.flag.Flag_resetForTesting.resetForTesting(stdgo._internal.flag.Flag_defaultUsage.defaultUsage);
            var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            stdgo._internal.flag.Flag_commandLine.commandLine.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
            {
                var _a0 = stdgo._internal.os.Os_args.args;
                __deferstack__.unshift(() -> {
                    var a = function(_old:stdgo.Slice<stdgo.GoString>):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            stdgo._internal.os.Os_args.args = _old;
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
                    a(_a0);
                });
            };
            stdgo._internal.os.Os_args.args = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("app" : stdgo.GoString), ("-i=1" : stdgo.GoString), ("-unknown" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            stdgo._internal.flag.Flag_parse.parse();
            {};
            {
                var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (("flag provided but not defined: -i\nUsage of app:\n" : stdgo.GoString))) {
                    _t.errorf(("output = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("flag provided but not defined: -i\nUsage of app:\n" : stdgo.GoString)));
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
