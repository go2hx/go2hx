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
function mustHaveBuildMode(_t:stdgo._internal.testing.Testing_TB.TB, _buildmode:stdgo.GoString):Void {
        if (!stdgo._internal.internal.platform.Platform_buildModeSupported.buildModeSupported(stdgo._internal.runtime.Runtime_compiler.compiler?.__copy__(), _buildmode?.__copy__(), ("js" : stdgo.GoString), ("wasm" : stdgo.GoString))) {
            _t.skipf(("skipping test: build mode %s on %s/%s is not supported by the %s compiler" : stdgo.GoString), stdgo.Go.toInterface(_buildmode), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_compiler.compiler));
        };
    }
