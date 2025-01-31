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
function skipFlakyNet(_t:stdgo._internal.testing.Testing_TB.TB):Void {
        _t.helper();
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool(stdgo._internal.os.Os_getenv.getenv(("GO_BUILDER_FLAKY_NET" : stdgo.GoString))?.__copy__()), _v:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_v) {
                _t.skip(stdgo.Go.toInterface(("skipping test on builder known to have frequent network failures" : stdgo.GoString)));
            };
        };
    }
