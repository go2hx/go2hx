package stdgo._internal.net.http;
function newResponseController(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter):stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController> {
        return (stdgo.Go.setRef((new stdgo._internal.net.http.Http_ResponseController.ResponseController(_rw) : stdgo._internal.net.http.Http_ResponseController.ResponseController)) : stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>);
    }
