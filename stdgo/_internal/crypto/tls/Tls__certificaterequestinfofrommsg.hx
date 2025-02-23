package stdgo._internal.crypto.tls;
function _certificateRequestInfoFromMsg(_ctx:stdgo._internal.context.Context_context.Context, _vers:stdgo.GoUInt16, _certReq:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo> {
        var _cri = (stdgo.Go.setRef(({ acceptableCAs : (@:checkr _certReq ?? throw "null pointer dereference")._certificateAuthorities, version : _vers, _ctx : _ctx } : stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>);
        var __0:Bool = false, __1:Bool = false;
var _ecAvail = __1, _rsaAvail = __0;
        for (__65 => _certType in (@:checkr _certReq ?? throw "null pointer dereference")._certificateTypes) {
            {
                final __value__ = _certType;
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _rsaAvail = true;
                } else if (__value__ == ((64 : stdgo.GoUInt8))) {
                    _ecAvail = true;
                };
            };
        };
        if (!(@:checkr _certReq ?? throw "null pointer dereference")._hasSignatureAlgorithm) {
            if ((_rsaAvail && _ecAvail : Bool)) {
                (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(7, 7, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            } else if (_rsaAvail) {
                (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(4, 4, ...[(1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            } else if (_ecAvail) {
                (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(3, 3, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            };
            return _cri;
        };
        (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>((0 : stdgo.GoInt).toBasic(), ((@:checkr _certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms.length)).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        for (__66 => _sigScheme in (@:checkr _certReq ?? throw "null pointer dereference")._supportedSignatureAlgorithms) {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_sigScheme), _sigType:stdgo.GoUInt8 = __tmp__._0, __67:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                continue;
            };
            {
                final __value__ = _sigType;
                if (__value__ == ((227 : stdgo.GoUInt8)) || __value__ == ((228 : stdgo.GoUInt8))) {
                    if (_ecAvail) {
                        (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes = ((@:checkr _cri ?? throw "null pointer dereference").signatureSchemes.__append__(_sigScheme));
                    };
                } else if (__value__ == ((226 : stdgo.GoUInt8)) || __value__ == ((225 : stdgo.GoUInt8))) {
                    if (_rsaAvail) {
                        (@:checkr _cri ?? throw "null pointer dereference").signatureSchemes = ((@:checkr _cri ?? throw "null pointer dereference").signatureSchemes.__append__(_sigScheme));
                    };
                };
            };
        };
        return _cri;
    }
