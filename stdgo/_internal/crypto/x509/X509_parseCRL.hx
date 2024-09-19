package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function parseCRL(_crlBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>; var _1 : stdgo.Error; } {
        if (stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_crlBytes, stdgo._internal.crypto.x509.X509__pemCRLPrefix._pemCRLPrefix)) {
            var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_crlBytes), _block:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block> = __tmp__._0, __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            if ((((_block != null) && ((_block : Dynamic).__nil__ == null || !(_block : Dynamic).__nil__)) && (_block.type == stdgo._internal.crypto.x509.X509__pemType._pemType) : Bool)) {
                _crlBytes = _block.bytes;
            };
        };
        return stdgo._internal.crypto.x509.X509_parseDERCRL.parseDERCRL(_crlBytes);
    }
