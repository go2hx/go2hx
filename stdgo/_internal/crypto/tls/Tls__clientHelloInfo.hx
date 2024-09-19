package stdgo._internal.crypto.tls;
function _clientHelloInfo(_ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo> {
        var _supportedVersions = _clientHello._supportedVersions;
        if ((_clientHello._supportedVersions.length) == ((0 : stdgo.GoInt))) {
            _supportedVersions = stdgo._internal.crypto.tls.Tls__supportedVersionsFromMax._supportedVersionsFromMax(_clientHello._vers);
        };
        return (stdgo.Go.setRef(({ cipherSuites : _clientHello._cipherSuites, serverName : _clientHello._serverName?.__copy__(), supportedCurves : _clientHello._supportedCurves, supportedPoints : _clientHello._supportedPoints, signatureSchemes : _clientHello._supportedSignatureAlgorithms, supportedProtos : _clientHello._alpnProtocols, supportedVersions : _supportedVersions, conn : _c._conn, _config : _c._config, _ctx : _ctx } : stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>);
    }
