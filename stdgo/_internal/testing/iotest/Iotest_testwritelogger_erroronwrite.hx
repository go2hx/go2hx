package stdgo._internal.testing.iotest;
function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _olw = (stdgo._internal.log.Log_writer.writer() : stdgo._internal.io.Io_writer.Writer);
            var _olf = (stdgo._internal.log.Log_flags.flags() : stdgo.GoInt);
            var _olp = (stdgo._internal.log.Log_prefix.prefix()?.__copy__() : stdgo.GoString);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        stdgo._internal.log.Log_setflags.setFlags(_olf);
                        stdgo._internal.log.Log_setprefix.setPrefix(_olp?.__copy__());
                        stdgo._internal.log.Log_setoutput.setOutput(_olw);
                    };
                    a();
                }) });
            };
            var _lOut = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
            stdgo._internal.log.Log_setprefix.setPrefix(("lw: " : stdgo.GoString));
            stdgo._internal.log.Log_setoutput.setOutput(stdgo.Go.asInterface(_lOut));
            stdgo._internal.log.Log_setflags.setFlags((0 : stdgo.GoInt));
            var _lw = ({ _err : stdgo._internal.errors.Errors_new_.new_(("Write Error!" : stdgo.GoString)) } : stdgo._internal.testing.iotest.Iotest_t_errwriter.T_errWriter);
            var _wl = (stdgo._internal.testing.iotest.Iotest_newwritelogger.newWriteLogger(("write:" : stdgo.GoString), stdgo.Go.asInterface(_lw)) : stdgo._internal.io.Io_writer.Writer);
            {
                var __tmp__ = _wl.write(((("Hello, World!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    @:check2r _t.fatalf(("Unexpectedly succeeded to write: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var _wantLogWithHex = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("lw: write: %x: %v\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.str() : stdgo.GoString)), stdgo.Go.toInterface(("Write Error!" : stdgo.GoString)))?.__copy__() : stdgo.GoString);
            {
                var __0 = ((@:check2r _lOut.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (_wantLogWithHex?.__copy__() : stdgo.GoString);
var _w = __1, _g = __0;
                if (_g != (_w)) {
                    @:check2r _t.errorf(("WriteLogger mismatch\n\tgot:  %q\n\twant: %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
