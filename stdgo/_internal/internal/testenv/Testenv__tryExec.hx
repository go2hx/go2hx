package stdgo._internal.internal.testenv;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.testing.Testing;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.time.Time;
import stdgo._internal.context.Context;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.platform.Platform;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
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
        (@:checkr _cmd ?? throw "null pointer dereference").env = stdgo._internal.internal.testenv.Testenv__origEnv._origEnv;
        return @:check2r _cmd.run();
    }
