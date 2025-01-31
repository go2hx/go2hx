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
function _syscallIsNotSupported(_err:stdgo.Error):Bool {
        return (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errPermission.errPermission) || stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.errors.Errors_errUnsupported.errUnsupported) : Bool);
    }
