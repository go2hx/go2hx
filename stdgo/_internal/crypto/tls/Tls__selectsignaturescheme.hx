package stdgo._internal.crypto.tls;
function _selectSignatureScheme(_vers:stdgo.GoUInt16, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _peerAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>):{ var _0 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme; var _1 : stdgo.Error; } {
        var _supportedAlgs = stdgo._internal.crypto.tls.Tls__signatureschemesforcertificate._signatureSchemesForCertificate(_vers, _c);
        if ((_supportedAlgs.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _1 : stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c) };
        };
        if (((_peerAlgs.length == (0 : stdgo.GoInt)) && (_vers == (771 : stdgo.GoUInt16)) : Bool)) {
            _peerAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(2, 2, ...[(513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        };
        for (__65 => _preferredAlg in _peerAlgs) {
            if ((stdgo._internal.crypto.tls.Tls__needfips._needFIPS() && !stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_preferredAlg, stdgo._internal.crypto.tls.Tls__fipssupportedsignaturealgorithms._fipsSupportedSignatureAlgorithms) : Bool)) {
                continue;
            };
            if (stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_preferredAlg, _supportedAlgs)) {
                return { _0 : _preferredAlg, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: peer doesn\'t support any of the certificate\'s signature algorithms" : stdgo.GoString)) };
    }
