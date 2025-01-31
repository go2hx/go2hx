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
function mustHaveExecPath(_t:stdgo._internal.testing.Testing_TB.TB, _path:stdgo.GoString):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(_t);
        var __tmp__ = @:check2 stdgo._internal.internal.testenv.Testenv__execPaths._execPaths.load(stdgo.Go.toInterface(_path)), _err:stdgo.AnyInterface = __tmp__._0, _found:Bool = __tmp__._1;
        if (!_found) {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(_path?.__copy__());
                _err = stdgo.Go.toInterface(@:tmpset0 __tmp__._1);
            };
            {
                var __tmp__ = @:check2 stdgo._internal.internal.testenv.Testenv__execPaths._execPaths.loadOrStore(stdgo.Go.toInterface(_path), _err);
                _err = @:tmpset0 __tmp__._0;
            };
        };
        if (_err != null) {
            _t.skipf(("skipping test: %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), _err);
        };
    }
