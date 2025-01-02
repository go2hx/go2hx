package stdgo._internal.net.http;
function _setupRewindBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> {
        if ((((@:checkr _req ?? throw "null pointer dereference").body == null) || (stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return _req;
        };
        var _newReq = ((_req : stdgo._internal.net.http.Http_Request.Request)?.__copy__() : stdgo._internal.net.http.Http_Request.Request);
        _newReq.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ readCloser : (@:checkr _req ?? throw "null pointer dereference").body } : stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>));
        return (stdgo.Go.setRef(_newReq) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    }
