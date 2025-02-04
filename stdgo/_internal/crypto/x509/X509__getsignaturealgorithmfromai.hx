package stdgo._internal.crypto.x509;
function _getSignatureAlgorithmFromAI(_ai:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm {
        if (_ai.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsignatureed25519._oidSignatureEd25519)) {
            if ((_ai.parameters.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
            };
        };
        if (!_ai.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsignaturersapss._oidSignatureRSAPSS)) {
            for (__1 => _details in stdgo._internal.crypto.x509.X509__signaturealgorithmdetails._signatureAlgorithmDetails) {
                if (_ai.algorithm.equal(_details._oid)) {
                    return _details._algo;
                };
            };
            return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        };
        var _params:stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters = ({} : stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_ai.parameters.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_params) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pssparameters.T_pssParameters>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
            };
        };
        var _mgf1HashFunc:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_params.mGF.parameters.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mgf1HashFunc) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier>)))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
            };
        };
        if ((((((((_params.hash.parameters.fullBytes.length != (0 : stdgo.GoInt)) && !stdgo._internal.bytes.Bytes_equal.equal(_params.hash.parameters.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes) : Bool)) || !_params.mGF.algorithm.equal(stdgo._internal.crypto.x509.X509__oidmgf1._oidMGF1) : Bool) || !_mgf1HashFunc.algorithm.equal(_params.hash.algorithm) : Bool) || (((_mgf1HashFunc.parameters.fullBytes.length != (0 : stdgo.GoInt)) && !stdgo._internal.bytes.Bytes_equal.equal(_mgf1HashFunc.parameters.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes) : Bool)) : Bool) || (_params.trailerField != (1 : stdgo.GoInt)) : Bool)) {
            return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        };
        if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsha256._oidSHA256) && (_params.saltLength == (32 : stdgo.GoInt)) : Bool)) {
            return (13 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        } else if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsha384._oidSHA384) && (_params.saltLength == (48 : stdgo.GoInt)) : Bool)) {
            return (14 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        } else if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidsha512._oidSHA512) && (_params.saltLength == (64 : stdgo.GoInt)) : Bool)) {
            return (15 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
        };
        return (0 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm);
    }
