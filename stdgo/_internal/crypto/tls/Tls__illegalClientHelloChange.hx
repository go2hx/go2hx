package stdgo._internal.crypto.tls;
function _illegalClientHelloChange(_ch:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>, _ch1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>):Bool {
        if (((((((_ch._supportedVersions.length) != ((_ch1._supportedVersions.length)) || (_ch._cipherSuites.length) != ((_ch1._cipherSuites.length)) : Bool) || (_ch._supportedCurves.length) != ((_ch1._supportedCurves.length)) : Bool) || (_ch._supportedSignatureAlgorithms.length) != ((_ch1._supportedSignatureAlgorithms.length)) : Bool) || (_ch._supportedSignatureAlgorithmsCert.length) != ((_ch1._supportedSignatureAlgorithmsCert.length)) : Bool) || (_ch._alpnProtocols.length != (_ch1._alpnProtocols.length)) : Bool)) {
            return true;
        };
        for (_i => _ in _ch._supportedVersions) {
            if (_ch._supportedVersions[(_i : stdgo.GoInt)] != (_ch1._supportedVersions[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in _ch._cipherSuites) {
            if (_ch._cipherSuites[(_i : stdgo.GoInt)] != (_ch1._cipherSuites[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in _ch._supportedCurves) {
            if (_ch._supportedCurves[(_i : stdgo.GoInt)] != (_ch1._supportedCurves[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in _ch._supportedSignatureAlgorithms) {
            if (_ch._supportedSignatureAlgorithms[(_i : stdgo.GoInt)] != (_ch1._supportedSignatureAlgorithms[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in _ch._supportedSignatureAlgorithmsCert) {
            if (_ch._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)] != (_ch1._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in _ch._alpnProtocols) {
            if (_ch._alpnProtocols[(_i : stdgo.GoInt)] != (_ch1._alpnProtocols[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        return (((((((((((((_ch._vers != (_ch1._vers) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._random, _ch1._random) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._sessionId, _ch1._sessionId) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._compressionMethods, _ch1._compressionMethods) : Bool) || _ch._serverName != (_ch1._serverName) : Bool) || _ch._ocspStapling != (_ch1._ocspStapling) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._supportedPoints, _ch1._supportedPoints) : Bool) || _ch._ticketSupported != (_ch1._ticketSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._sessionTicket, _ch1._sessionTicket) : Bool) || _ch._secureRenegotiationSupported != (_ch1._secureRenegotiationSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._secureRenegotiation, _ch1._secureRenegotiation) : Bool) || _ch._scts != (_ch1._scts) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._cookie, _ch1._cookie) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal(_ch._pskModes, _ch1._pskModes) : Bool);
    }
