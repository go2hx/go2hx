package stdgo._internal.net.http;
function _setupRewindBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> {
        if (((_req.body == null) || (stdgo.Go.toInterface(_req.body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return _req;
        };
        var _newReq = ((_req : stdgo._internal.net.http.Http_Request.Request)?.__copy__() : stdgo._internal.net.http.Http_Request.Request);
        var _newReq__pointer__ = (stdgo.Go.setRef(_newReq) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        _newReq.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ readCloser : _req.body } : stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>));
        return _newReq__pointer__;
    }
