package stdgo._internal.net.http;
function _badRequestError(_e:stdgo.GoString):stdgo.Error {
        return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_statusError.T_statusError((400 : stdgo.GoInt), _e?.__copy__()) : stdgo._internal.net.http.Http_T_statusError.T_statusError));
    }
