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
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> {
        if ((@:checkr _cmd ?? throw "null pointer dereference").env != null) {
            throw stdgo.Go.toInterface(("environment already set" : stdgo.GoString));
        };
        for (__6 => _env in stdgo._internal.os.Os_environ_.environ_()) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_env?.__copy__(), ("GODEBUG=" : stdgo.GoString))) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_env?.__copy__(), ("GOTRACEBACK=" : stdgo.GoString))) {
                continue;
            };
            (@:checkr _cmd ?? throw "null pointer dereference").env = ((@:checkr _cmd ?? throw "null pointer dereference").env.__append__(_env?.__copy__()));
        };
        return _cmd;
    }
