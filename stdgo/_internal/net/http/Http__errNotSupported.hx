package stdgo._internal.net.http;
function _errNotSupported():stdgo.Error {
        return stdgo._internal.fmt.Fmt_errorf.errorf(("%w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_errNotSupported.errNotSupported)));
    }
