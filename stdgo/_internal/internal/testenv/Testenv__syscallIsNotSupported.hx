package stdgo._internal.internal.testenv;
function _syscallIsNotSupported(_err:stdgo.Error):Bool {
        return (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errPermission.errPermission) || stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.errors.Errors_errUnsupported.errUnsupported) : Bool);
    }
