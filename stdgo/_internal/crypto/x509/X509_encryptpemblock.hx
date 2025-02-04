package stdgo._internal.crypto.x509;
function encryptPEMBlock(_rand:stdgo._internal.io.Io_reader.Reader, _blockType:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _password:stdgo.Slice<stdgo.GoUInt8>, _alg:stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher):{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>; var _1 : stdgo.Error; } {
        var _ciph = stdgo._internal.crypto.x509.X509__cipherbykey._cipherByKey(_alg);
        if ((_ciph == null || (_ciph : Dynamic).__nil__)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown encryption mode" : stdgo.GoString)) };
        };
        var _iv = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _ciph ?? throw "null pointer dereference")._blockSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _iv), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("x509: cannot generate IV: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        var _key = (@:checkr _ciph ?? throw "null pointer dereference")._deriveKey(_password, (_iv.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var __tmp__ = (@:checkr _ciph ?? throw "null pointer dereference")._cipherFunc(_key), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _enc = (stdgo._internal.crypto.cipher.Cipher_newcbcencrypter.newCBCEncrypter(_block, _iv) : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode);
        var _pad = ((@:checkr _ciph ?? throw "null pointer dereference")._blockSize - ((_data.length) % (@:checkr _ciph ?? throw "null pointer dereference")._blockSize : stdgo.GoInt) : stdgo.GoInt);
        var _encrypted = (new stdgo.Slice<stdgo.GoUInt8>((_data.length : stdgo.GoInt).toBasic(), ((_data.length) + _pad : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _encrypted.__copyTo__(_data);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _pad : Bool)) {
                _encrypted = (_encrypted.__append__((_pad : stdgo.GoUInt8)));
                _i++;
            };
        };
        _enc.cryptBlocks(_encrypted, _encrypted);
        return { _0 : (stdgo.Go.setRef(({ type : _blockType?.__copy__(), headers : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(("Proc-Type" : stdgo.GoString), ("4,ENCRYPTED" : stdgo.GoString));
x.set(("DEK-Info" : stdgo.GoString), (((@:checkr _ciph ?? throw "null pointer dereference")._name + ("," : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_iv)?.__copy__() : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), bytes : _encrypted } : stdgo._internal.encoding.pem.Pem_block.Block)) : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>), _1 : (null : stdgo.Error) };
    }
