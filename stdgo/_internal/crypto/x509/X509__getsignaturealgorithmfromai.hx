package stdgo._internal.crypto.x509;
function _getSignatureAlgorithmFromAI(_ai:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L407"
        if (_ai.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsignatureed25519._oidSignatureEd25519)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L410"
            if ((_ai.parameters.fullBytes.length) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L411"
                return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L415"
        if (!_ai.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsignaturersapss._oidSignatureRSAPSS)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L416"
            for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L417"
                if (_ai.algorithm.equal(_details._oid)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L418"
                    return _details._algo;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L421"
            return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        };
        var _params:stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters = ({} : stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L428"
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_ai.parameters.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_params) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L429"
                return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
            };
        };
        var _mgf1HashFunc:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L433"
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_params.mGF.parameters.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mgf1HashFunc) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier>)))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L434"
                return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L442"
        if ((((((((_params.hash.parameters.fullBytes.length != (0 : stdgo.GoInt)) && !stdgo._internal.bytes.Bytes_equal.equal(_params.hash.parameters.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes) : Bool)) || !_params.mGF.algorithm.equal(stdgo._internal.crypto.x509.X509__oidmgf1._oidMGF1) : Bool) || !_mgf1HashFunc.algorithm.equal(_params.hash.algorithm) : Bool) || (((_mgf1HashFunc.parameters.fullBytes.length != (0 : stdgo.GoInt)) && !stdgo._internal.bytes.Bytes_equal.equal(_mgf1HashFunc.parameters.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes) : Bool)) : Bool) || (_params.trailerField != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L447"
            return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L450"
        if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsha256._oidSHA256) && (_params.saltLength == (32 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L452"
            return (13 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        } else if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsha384._oidSHA384) && (_params.saltLength == (48 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L454"
            return (14 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        } else if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsha512._oidSHA512) && (_params.saltLength == (64 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L456"
            return (15 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L459"
        return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
    }
