package stdgo._internal.net.http;
function redirectHandler(_url:stdgo.GoString, _code:stdgo.GoInt):stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler(_url?.__copy__(), _code) : stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler)) : stdgo.Ref<stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler>));
    }
