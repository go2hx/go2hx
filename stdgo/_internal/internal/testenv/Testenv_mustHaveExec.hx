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
function mustHaveExec(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        @:check2 stdgo._internal.internal.testenv.Testenv__tryExecOnce._tryExecOnce.do_(function():Void {
            stdgo._internal.internal.testenv.Testenv__tryExecErr._tryExecErr = stdgo._internal.internal.testenv.Testenv__tryExec._tryExec();
        });
        if (stdgo._internal.internal.testenv.Testenv__tryExecErr._tryExecErr != null) {
            _t.skipf(("skipping test: cannot exec subprocess on %s/%s: %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.internal.testenv.Testenv__tryExecErr._tryExecErr));
        };
    }
