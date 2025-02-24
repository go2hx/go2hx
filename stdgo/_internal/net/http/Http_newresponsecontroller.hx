package stdgo._internal.net.http;
function newResponseController(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter):stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> {
        return (stdgo.Go.setRef((new stdgo._internal.net.http.Http_responsecontroller.ResponseController(_rw) : stdgo._internal.net.http.Http_responsecontroller.ResponseController)) : stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>);
    }
