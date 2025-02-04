package stdgo._internal.crypto.tls;
function _illegalClientHelloChange(_ch:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _ch1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):Bool {
        if ((((((((@:checkr _ch ?? throw "null pointer dereference")._supportedVersions.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedVersions.length)) || ((@:checkr _ch ?? throw "null pointer dereference")._cipherSuites.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._cipherSuites.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._supportedCurves.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedCurves.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert.length) != (((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert.length)) : Bool) || ((@:checkr _ch ?? throw "null pointer dereference")._alpnProtocols.length != ((@:checkr _ch1 ?? throw "null pointer dereference")._alpnProtocols.length)) : Bool)) {
            return true;
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedVersions) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedVersions[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedVersions[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._cipherSuites) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._cipherSuites[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._cipherSuites[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedCurves) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedCurves[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedCurves[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithms) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithms[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithms[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        for (_i => _ in (@:checkr _ch ?? throw "null pointer dereference")._alpnProtocols) {
            if ((@:checkr _ch ?? throw "null pointer dereference")._alpnProtocols[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw "null pointer dereference")._alpnProtocols[(_i : stdgo.GoInt)])) {
                return true;
            };
        };
        return ((((((((((((((@:checkr _ch ?? throw "null pointer dereference")._vers != ((@:checkr _ch1 ?? throw "null pointer dereference")._vers) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._random, (@:checkr _ch1 ?? throw "null pointer dereference")._random) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._sessionId, (@:checkr _ch1 ?? throw "null pointer dereference")._sessionId) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._compressionMethods, (@:checkr _ch1 ?? throw "null pointer dereference")._compressionMethods) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._serverName != ((@:checkr _ch1 ?? throw "null pointer dereference")._serverName) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._ocspStapling != ((@:checkr _ch1 ?? throw "null pointer dereference")._ocspStapling) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._supportedPoints, (@:checkr _ch1 ?? throw "null pointer dereference")._supportedPoints) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._ticketSupported != ((@:checkr _ch1 ?? throw "null pointer dereference")._ticketSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._sessionTicket, (@:checkr _ch1 ?? throw "null pointer dereference")._sessionTicket) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._secureRenegotiationSupported != ((@:checkr _ch1 ?? throw "null pointer dereference")._secureRenegotiationSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._secureRenegotiation, (@:checkr _ch1 ?? throw "null pointer dereference")._secureRenegotiation) : Bool) || (@:checkr _ch ?? throw "null pointer dereference")._scts != ((@:checkr _ch1 ?? throw "null pointer dereference")._scts) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._cookie, (@:checkr _ch1 ?? throw "null pointer dereference")._cookie) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw "null pointer dereference")._pskModes, (@:checkr _ch1 ?? throw "null pointer dereference")._pskModes) : Bool);
    }
