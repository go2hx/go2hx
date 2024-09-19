package stdgo._internal.crypto.tls;
function _quicError(_err:stdgo.Error):stdgo.Error {
        if (_err == null) {
            return (null : stdgo.Error);
        };
        var _ae:stdgo._internal.crypto.tls.Tls_AlertError.AlertError = ((0 : stdgo.GoUInt8) : stdgo._internal.crypto.tls.Tls_AlertError.AlertError);
        if (stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(stdgo.Go.pointer(_ae)))) {
            return _err;
        };
        var _a:stdgo._internal.crypto.tls.Tls_T_alert.T_alert = ((0 : stdgo.GoUInt8) : stdgo._internal.crypto.tls.Tls_T_alert.T_alert);
        if (!stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface(stdgo.Go.pointer(_a)))) {
            _a = (80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert);
        };
        return stdgo._internal.fmt.Fmt_errorf.errorf(("%w%.0w" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface((_a : stdgo._internal.crypto.tls.Tls_AlertError.AlertError))));
    }
