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
function goTool():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (!stdgo._internal.internal.testenv.Testenv_hasGoBuild.hasGoBuild()) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("platform cannot run go tool" : stdgo.GoString)) };
        };
        @:check2 stdgo._internal.internal.testenv.Testenv__goToolOnce._goToolOnce.do_(function():Void {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("go" : stdgo.GoString));
                stdgo._internal.internal.testenv.Testenv__goToolPath._goToolPath = @:tmpset0 __tmp__._0?.__copy__();
                stdgo._internal.internal.testenv.Testenv__goToolErr._goToolErr = @:tmpset0 __tmp__._1;
            };
        });
        return { _0 : stdgo._internal.internal.testenv.Testenv__goToolPath._goToolPath?.__copy__(), _1 : stdgo._internal.internal.testenv.Testenv__goToolErr._goToolErr };
    }
