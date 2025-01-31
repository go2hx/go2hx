package stdgo.internal.oserror;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.internal.oserror.Oserror_errInvalid.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.oserror.Oserror_errInvalid.errInvalid = (v : stdgo.Error);
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.internal.oserror.Oserror_errPermission.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.oserror.Oserror_errPermission.errPermission = (v : stdgo.Error);
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.internal.oserror.Oserror_errExist.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.oserror.Oserror_errExist.errExist = (v : stdgo.Error);
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.internal.oserror.Oserror_errNotExist.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.oserror.Oserror_errNotExist.errNotExist = (v : stdgo.Error);
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.internal.oserror.Oserror_errClosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.oserror.Oserror_errClosed.errClosed = (v : stdgo.Error);
        return v;
    }
/**
    Package oserror defines errors values used in the os package.
    
    These types are defined here to permit the syscall package to reference them.
**/
class Oserror {

}
