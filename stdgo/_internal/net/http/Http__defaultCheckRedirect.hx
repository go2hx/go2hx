package stdgo._internal.net.http;
function _defaultCheckRedirect(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _via:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>):stdgo.Error {
        if (((_via.length) >= (10 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("stopped after 10 redirects" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
