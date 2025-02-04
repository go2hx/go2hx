package stdgo._internal.internal.testenv;
function _syscallIsNotSupported(_err:stdgo.Error):Bool {
        return (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errpermission.errPermission) || stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.errors.Errors_errunsupported.errUnsupported) : Bool);
    }
