package stdgo._internal.crypto.x509;
function _marshalKeyUsage(_ku:stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension; var _1 : stdgo.Error; } {
        var _ext = ({ id : stdgo._internal.crypto.x509.X509__oidExtensionKeyUsage._oidExtensionKeyUsage, critical : true } : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension);
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2).__setNumber32__();
        _a[(0 : stdgo.GoInt)] = stdgo._internal.crypto.x509.X509__reverseBitsInAByte._reverseBitsInAByte((_ku : stdgo.GoUInt8));
        _a[(1 : stdgo.GoInt)] = stdgo._internal.crypto.x509.X509__reverseBitsInAByte._reverseBitsInAByte(((_ku >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) : stdgo.GoUInt8));
        var _l = (1 : stdgo.GoInt);
        if (_a[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
            _l = (2 : stdgo.GoInt);
        };
        var _bitString = (_a.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ bytes : _bitString, bitLength : stdgo._internal.crypto.x509.X509__asn1BitLength._asn1BitLength(_bitString) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString))));
            _ext.value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
