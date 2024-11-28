package stdgo._internal.net.http;
function _toHTTPError(_err:stdgo.Error):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        var _msg = ("" : stdgo.GoString), _httpStatus = (0 : stdgo.GoInt);
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : ("404 page not found" : stdgo.GoString), _1 : (404 : stdgo.GoInt) };
                _msg = __tmp__._0;
                _httpStatus = __tmp__._1;
                __tmp__;
            };
        };
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errPermission.errPermission)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : ("403 Forbidden" : stdgo.GoString), _1 : (403 : stdgo.GoInt) };
                _msg = __tmp__._0;
                _httpStatus = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : ("500 Internal Server Error" : stdgo.GoString), _1 : (500 : stdgo.GoInt) };
            _msg = __tmp__._0;
            _httpStatus = __tmp__._1;
            __tmp__;
        };
    }
