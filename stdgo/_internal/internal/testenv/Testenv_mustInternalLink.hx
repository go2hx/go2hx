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
function mustInternalLink(_t:stdgo._internal.testing.Testing_TB.TB, _withCgo:Bool):Void {
        if (!stdgo._internal.internal.testenv.Testenv_canInternalLink.canInternalLink(_withCgo)) {
            if ((_withCgo && stdgo._internal.internal.testenv.Testenv_canInternalLink.canInternalLink(false) : Bool)) {
                _t.skipf(("skipping test: internal linking on %s/%s is not supported with cgo" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
            };
            _t.skipf(("skipping test: internal linking on %s/%s is not supported" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
    }
