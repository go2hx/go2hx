package stdgo._internal.crypto.tls;
function _signedMessage(_sigHash:stdgo._internal.crypto.Crypto_hash.Hash, _context:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        if (_sigHash == (stdgo._internal.crypto.tls.Tls__directsigning._directSigning)) {
            var _b = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            @:check2r _b.write(stdgo._internal.crypto.tls.Tls__signaturepadding._signaturePadding);
            stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface(_b), _context?.__copy__());
            @:check2r _b.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
            return @:check2r _b.bytes();
        };
        var _h = (_sigHash.new_() : stdgo._internal.hash.Hash_hash.Hash);
        _h.write(stdgo._internal.crypto.tls.Tls__signaturepadding._signaturePadding);
        stdgo._internal.io.Io_writestring.writeString(_h, _context?.__copy__());
        _h.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        return _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
