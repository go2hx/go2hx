package stdgo._internal.crypto.x509;
function parseCRL(_crlBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1684"
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_crlBytes, stdgo._internal.crypto.x509.X509__pemcrlprefix._pemCRLPrefix)) {
            var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_crlBytes), _block:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block> = __tmp__._0, __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1686"
            if ((({
                final value = _block;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _block ?? throw "null pointer dereference").type == stdgo._internal.crypto.x509.X509__pemtype._pemType) : Bool)) {
                _crlBytes = (@:checkr _block ?? throw "null pointer dereference").bytes;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1690"
        return stdgo._internal.crypto.x509.X509_parsedercrl.parseDERCRL(_crlBytes);
    }
