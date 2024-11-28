package stdgo._internal.net.http;
function _toHTTPError(_err:stdgo.Error):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        var _msg = ("" : stdgo.GoString), _httpStatus = (0 : stdgo.GoInt);
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist)) {
            return { _0 : _msg = ("404 page not found" : stdgo.GoString), _1 : _httpStatus = (404 : stdgo.GoInt) };
        };
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errPermission.errPermission)) {
            return { _0 : _msg = ("403 Forbidden" : stdgo.GoString), _1 : _httpStatus = (403 : stdgo.GoInt) };
        };
        return { _0 : _msg = ("500 Internal Server Error" : stdgo.GoString), _1 : _httpStatus = (500 : stdgo.GoInt) };
    }
