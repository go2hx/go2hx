package stdgo._internal.net.http;
function timeoutHandler(_h:stdgo._internal.net.http.Http_handler.Handler, _dt:stdgo._internal.time.Time_duration.Duration, _msg:stdgo.GoString):stdgo._internal.net.http.Http_handler.Handler {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _handler : _h, _body : _msg?.__copy__(), _dt : _dt } : stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler)) : stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler>));
    }
