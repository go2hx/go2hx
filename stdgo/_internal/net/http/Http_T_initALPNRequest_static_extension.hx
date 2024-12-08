package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_initALPNRequest_asInterface) class T_initALPNRequest_static_extension {
    @:keep
    static public function serveHTTP( _h:stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest = _h?.__copy__();
        if ((_req.tls == null || (_req.tls : Dynamic).__nil__)) {
            _req.tls = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
            {
                var __tmp__ = _h._c.connectionState()?.__copy__();
                var x = (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState);
                x.version = __tmp__.version;
                x.handshakeComplete = __tmp__.handshakeComplete;
                x.didResume = __tmp__.didResume;
                x.cipherSuite = __tmp__.cipherSuite;
                x.negotiatedProtocol = __tmp__.negotiatedProtocol;
                x.negotiatedProtocolIsMutual = __tmp__.negotiatedProtocolIsMutual;
                x.serverName = __tmp__.serverName;
                x.peerCertificates = __tmp__.peerCertificates;
                x.verifiedChains = __tmp__.verifiedChains;
                x.signedCertificateTimestamps = __tmp__.signedCertificateTimestamps;
                x.ocspresponse = __tmp__.ocspresponse;
                x.tlsunique = __tmp__.tlsunique;
                x._ekm = __tmp__._ekm;
            };
        };
        if (_req.body == null) {
            _req.body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
        };
        if (_req.remoteAddr == (stdgo.Go.str())) {
            _req.remoteAddr = (_h._c.remoteAddr().string() : stdgo.GoString)?.__copy__();
        };
        _h._h.serveHTTP(_rw, _req);
    }
    @:keep
    static public function baseContext( _h:stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest):stdgo._internal.context.Context_Context.Context {
        @:recv var _h:stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest = _h?.__copy__();
        return _h._ctx;
    }
}
