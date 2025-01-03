package stdgo._internal.crypto.x509;
function parseCRL(_crlBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>; var _1 : stdgo.Error; } {
        if (stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_crlBytes, stdgo._internal.crypto.x509.X509__pemCRLPrefix._pemCRLPrefix)) {
            var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_crlBytes), _block:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block> = __tmp__._0, __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            if (((_block != null && ((_block : Dynamic).__nil__ == null || !(_block : Dynamic).__nil__)) && ((@:checkr _block ?? throw "null pointer dereference").type == stdgo._internal.crypto.x509.X509__pemType._pemType) : Bool)) {
                _crlBytes = (@:checkr _block ?? throw "null pointer dereference").bytes;
            };
        };
        return stdgo._internal.crypto.x509.X509_parseDERCRL.parseDERCRL(_crlBytes);
    }
