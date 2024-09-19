package stdgo._internal.net.http;
function timeoutHandler(_h:stdgo._internal.net.http.Http_Handler.Handler, _dt:stdgo._internal.time.Time_Duration.Duration, _msg:stdgo.GoString):stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _handler : _h, _body : _msg?.__copy__(), _dt : _dt } : stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler)) : stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler>));
    }
