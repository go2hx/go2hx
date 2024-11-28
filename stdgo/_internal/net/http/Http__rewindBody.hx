package stdgo._internal.net.http;
function _rewindBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var _rewound = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _err = (null : stdgo.Error);
        if (((_req.body == null || stdgo.Go.toInterface(_req.body) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool) || ((!(stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)._didRead && !(stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)._didClose : Bool)) : Bool)) {
            return { _0 : _rewound = _req, _1 : _err = (null : stdgo.Error) };
        };
        if (!(stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)._didClose) {
            _req._closeBody();
        };
        if (_req.getBody == null) {
            return { _0 : _rewound = null, _1 : _err = stdgo._internal.net.http.Http__errCannotRewind._errCannotRewind };
        };
        var __tmp__ = _req.getBody(), _body:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _rewound = null, _1 : _err };
        };
        var _newReq = ((_req : stdgo._internal.net.http.Http_Request.Request)?.__copy__() : stdgo._internal.net.http.Http_Request.Request);
        _newReq.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ readCloser : _body } : stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>));
        return { _0 : _rewound = (stdgo.Go.setRef(_newReq) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _1 : _err = (null : stdgo.Error) };
    }
