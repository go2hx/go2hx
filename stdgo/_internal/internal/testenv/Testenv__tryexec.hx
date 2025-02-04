package stdgo._internal.internal.testenv;
function _tryExec():stdgo.Error {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("wasip1" : stdgo.GoString)) || __value__ == (("js" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString))) {} else {
                return (null : stdgo.Error);
            };
        };
        if (!stdgo._internal.testing.Testing_testing.testing()) {
            return stdgo._internal.errors.Errors_new_.new_(("can\'t probe for exec support with a non-test executable" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.os.Os_executable.executable(), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t probe for exec support: %w" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__(), ("-test.list=^$" : stdgo.GoString));
        (@:checkr _cmd ?? throw "null pointer dereference").env = stdgo._internal.internal.testenv.Testenv__origenv._origEnv;
        return @:check2r _cmd.run();
    }
