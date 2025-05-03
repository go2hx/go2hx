package stdgo._internal.crypto.x509;
function decryptPEMBlock(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>, _password:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = ((@:checkr _b ?? throw "null pointer dereference").headers != null && (@:checkr _b ?? throw "null pointer dereference").headers.__exists__(("DEK-Info" : stdgo.GoString)) ? { _0 : (@:checkr _b ?? throw "null pointer dereference").headers[("DEK-Info" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _dek:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L126"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L127"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: no DEK-Info header in block" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_dek?.__copy__(), ("," : stdgo.GoString)), _mode:stdgo.GoString = __tmp__._0, _hexIV:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L131"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L132"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed DEK-Info header" : stdgo.GoString)) };
        };
        var _ciph = stdgo._internal.crypto.x509.X509__cipherbyname._cipherByName(_mode?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L136"
        if (({
            final value = _ciph;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L137"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown encryption mode" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_hexIV?.__copy__()), _iv:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L140"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L141"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L143"
        if ((_iv.length) != ((@:checkr _ciph ?? throw "null pointer dereference")._blockSize)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L144"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: incorrect IV size" : stdgo.GoString)) };
        };
        var _key = (@:checkr _ciph ?? throw "null pointer dereference")._deriveKey(_password, (_iv.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var __tmp__ = (@:checkr _ciph ?? throw "null pointer dereference")._cipherFunc(_key), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L151"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L152"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L155"
        if ((((@:checkr _b ?? throw "null pointer dereference").bytes.length) % _block.blockSize() : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L156"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: encrypted PEM data is not a multiple of the block size" : stdgo.GoString)) };
        };
        var _data = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _b ?? throw "null pointer dereference").bytes.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _dec = (stdgo._internal.crypto.cipher.Cipher_newcbcdecrypter.newCBCDecrypter(_block, _iv) : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L161"
        _dec.cryptBlocks(_data, (@:checkr _b ?? throw "null pointer dereference").bytes);
        var _dlen = (_data.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L170"
        if (((_dlen == (0 : stdgo.GoInt)) || ((_dlen % (@:checkr _ciph ?? throw "null pointer dereference")._blockSize : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L171"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid padding" : stdgo.GoString)) };
        };
        var _last = (_data[(_dlen - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L174"
        if ((_dlen < _last : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L175"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.x509.X509_incorrectpassworderror.incorrectPasswordError };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L177"
        if (((_last == (0 : stdgo.GoInt)) || (_last > (@:checkr _ciph ?? throw "null pointer dereference")._blockSize : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L178"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.x509.X509_incorrectpassworderror.incorrectPasswordError };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L180"
        for (__1 => _val in (_data.__slice__((_dlen - _last : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L181"
            if ((_val : stdgo.GoInt) != (_last)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L182"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.x509.X509_incorrectpassworderror.incorrectPasswordError };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pem_decrypt.go#L185"
        return { _0 : (_data.__slice__(0, (_dlen - _last : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
