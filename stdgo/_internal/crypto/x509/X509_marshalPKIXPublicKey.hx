package stdgo._internal.crypto.x509;
function marshalPKIXPublicKey(_pub:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalPublicKey._marshalPublicKey(_pub);
                _publicKeyBytes = __tmp__._0;
                _publicKeyAlgorithm = __tmp__._1?.__copy__();
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _pkix = ({ algo : _publicKeyAlgorithm?.__copy__(), bitString : ({ bytes : _publicKeyBytes, bitLength : ((8 : stdgo.GoInt) * (_publicKeyBytes.length) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_pkix)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
