package stdgo._internal.net.http;
function _rewindBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var _rewound = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _err = (null : stdgo.Error);
        if (((_req.body == null || stdgo.Go.toInterface(_req.body) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool) || ((!(stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)._didRead && !(stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)._didClose : Bool)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : (null : stdgo.Error) };
                _rewound = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (!(stdgo.Go.typeAssert((stdgo.Go.toInterface(_req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>)._didClose) {
            _req._closeBody();
        };
        if (_req.getBody == null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errCannotRewind._errCannotRewind };
                _rewound = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = _req.getBody(), _body:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _rewound = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _newReq = ((_req : stdgo._internal.net.http.Http_Request.Request)?.__copy__() : stdgo._internal.net.http.Http_Request.Request);
        var _newReq__pointer__ = (stdgo.Go.setRef(_newReq) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        _newReq.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ readCloser : _body } : stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody>));
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } = { _0 : _newReq__pointer__, _1 : (null : stdgo.Error) };
            _rewound = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
