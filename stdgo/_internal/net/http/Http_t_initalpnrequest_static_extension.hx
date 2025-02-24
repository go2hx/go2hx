package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_initALPNRequest_asInterface) class T_initALPNRequest_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest = _h?.__copy__();
        if (((@:checkr _req ?? throw "null pointer dereference").tLS == null || ((@:checkr _req ?? throw "null pointer dereference").tLS : Dynamic).__nil__)) {
            (@:checkr _req ?? throw "null pointer dereference").tLS = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
            {
                var __tmp__ = @:check2r _h._c.connectionState()?.__copy__();
                var x = ((@:checkr _req ?? throw "null pointer dereference").tLS : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
                x.version = __tmp__?.version;
                x.handshakeComplete = __tmp__?.handshakeComplete;
                x.didResume = __tmp__?.didResume;
                x.cipherSuite = __tmp__?.cipherSuite;
                x.negotiatedProtocol = __tmp__?.negotiatedProtocol;
                x.negotiatedProtocolIsMutual = __tmp__?.negotiatedProtocolIsMutual;
                x.serverName = __tmp__?.serverName;
                x.peerCertificates = __tmp__?.peerCertificates;
                x.verifiedChains = __tmp__?.verifiedChains;
                x.signedCertificateTimestamps = __tmp__?.signedCertificateTimestamps;
                x.oCSPResponse = __tmp__?.oCSPResponse;
                x.tLSUnique = __tmp__?.tLSUnique;
                x._ekm = __tmp__?._ekm;
            };
        };
        if ((@:checkr _req ?? throw "null pointer dereference").body == null) {
            (@:checkr _req ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody);
        };
        if ((@:checkr _req ?? throw "null pointer dereference").remoteAddr == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _req ?? throw "null pointer dereference").remoteAddr = (@:check2r _h._c.remoteAddr().string() : stdgo.GoString)?.__copy__();
        };
        _h._h.serveHTTP(_rw, _req);
    }
    @:keep
    @:tdfield
    static public function baseContext( _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest):stdgo._internal.context.Context_context.Context {
        @:recv var _h:stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest = _h?.__copy__();
        return _h._ctx;
    }
}
