package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing_M.M>):Void {
        stdgo._internal.flag.Flag_parse.parse();
        var _pid = (stdgo._internal.os.Os_getpid.getpid() : stdgo.GoInt);
        if (stdgo._internal.os.Os_getenv.getenv(("GO_EXEC_TEST_PID" : stdgo.GoString)) == (stdgo.Go.str())) {
            stdgo._internal.os.Os_setenv.setenv(("GO_EXEC_TEST_PID" : stdgo.GoString), stdgo._internal.strconv.Strconv_itoa.itoa(_pid)?.__copy__());
            var _code = (_m.run() : stdgo.GoInt);
            if (((_code == ((0 : stdgo.GoInt)) && (stdgo._internal.flag.Flag_lookup.lookup(("test.run" : stdgo.GoString)).value.string() : stdgo.GoString) == (stdgo.Go.str()) : Bool) && ((stdgo._internal.flag.Flag_lookup.lookup(("test.list" : stdgo.GoString)).value.string() : stdgo.GoString) == stdgo.Go.str()) : Bool)) {
                for (_cmd => _ in _internal.os.exec_test.Exec_test__helperCommands._helperCommands) {
                    {
                        var __tmp__ = _internal.os.exec_test.Exec_test__helperCommandUsed._helperCommandUsed.load(stdgo.Go.toInterface(_cmd)), __4:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("helper command unused: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_cmd));
                            _code = (1 : stdgo.GoInt);
                        };
                    };
                };
            };
            if (!stdgo._internal.testing.Testing_short.short()) {
                stdgo._internal.runtime.Runtime_gc.gc();
                stdgo._internal.runtime.Runtime_gc.gc();
            };
            Sys.exit(_code);
        };
        var _args = stdgo._internal.flag.Flag_args.args();
        if ((_args.length) == ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("No command\n" : stdgo.GoString));
            Sys.exit((2 : stdgo.GoInt));
        };
        var __0 = (_args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString), __1 = (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
var _args = __1, _cmd = __0;
        var __tmp__ = (_internal.os.exec_test.Exec_test__helperCommands._helperCommands != null && _internal.os.exec_test.Exec_test__helperCommands._helperCommands.exists(_cmd?.__copy__()) ? { _0 : _internal.os.exec_test.Exec_test__helperCommands._helperCommands[_cmd?.__copy__()], _1 : true } : { _0 : null, _1 : false }), _f:haxe.Rest<stdgo.GoString> -> Void = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("Unknown command %q\n" : stdgo.GoString), stdgo.Go.toInterface(_cmd));
            Sys.exit((2 : stdgo.GoInt));
        };
        _f(...(_args : Array<stdgo.GoString>));
        Sys.exit((0 : stdgo.GoInt));
    }
