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
function skipIfOptimizationOff(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        if (stdgo._internal.internal.testenv.Testenv_optimizationOff.optimizationOff()) {
            _t.helper();
            _t.skip(stdgo.Go.toInterface(("skipping test with optimization disabled" : stdgo.GoString)));
        };
    }
