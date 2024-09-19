package stdgo._internal.crypto.tls;
function _signedMessage(_sigHash:stdgo._internal.crypto.Crypto_Hash.Hash, _context:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        if (_sigHash == (stdgo._internal.crypto.tls.Tls__directSigning._directSigning)) {
            var _b = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            _b.write(stdgo._internal.crypto.tls.Tls__signaturePadding._signaturePadding);
            stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_b), _context?.__copy__());
            _b.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
            return _b.bytes();
        };
        var _h = (_sigHash.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        _h.write(stdgo._internal.crypto.tls.Tls__signaturePadding._signaturePadding);
        stdgo._internal.io.Io_writeString.writeString(_h, _context?.__copy__());
        _h.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        return _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
