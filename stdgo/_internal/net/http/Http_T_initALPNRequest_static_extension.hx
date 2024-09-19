package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_initALPNRequest_asInterface) class T_initALPNRequest_static_extension {
    @:keep
    static public function serveHTTP( _h:stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest = _h?.__copy__();
        if (_req.tls == null || (_req.tls : Dynamic).__nil__) {
            _req.tls = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState() : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
            {
                var __tmp__ = _h._c.connectionState()?.__copy__();
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).version = __tmp__.version;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).handshakeComplete = __tmp__.handshakeComplete;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).didResume = __tmp__.didResume;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).cipherSuite = __tmp__.cipherSuite;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).negotiatedProtocol = __tmp__.negotiatedProtocol;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).negotiatedProtocolIsMutual = __tmp__.negotiatedProtocolIsMutual;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).serverName = __tmp__.serverName;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).peerCertificates = __tmp__.peerCertificates;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).verifiedChains = __tmp__.verifiedChains;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).signedCertificateTimestamps = __tmp__.signedCertificateTimestamps;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).ocspresponse = __tmp__.ocspresponse;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState).tlsunique = __tmp__.tlsunique;
                (_req.tls : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)._ekm = __tmp__._ekm;
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
