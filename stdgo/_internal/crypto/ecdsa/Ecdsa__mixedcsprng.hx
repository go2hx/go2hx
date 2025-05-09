package stdgo._internal.crypto.ecdsa;
function _mixedCSPRNG(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; } {
        var _entropy = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L427"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _entropy), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L428"
                return { _0 : (null : stdgo._internal.io.Io_reader.Reader), _1 : _err };
            };
        };
        var _md = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L433"
        _md.write((@:checkr _priv ?? throw "null pointer dereference").d.bytes());
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L434"
        _md.write(_entropy);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L435"
        _md.write(_hash);
        var _key = (_md.sum((null : stdgo.Slice<stdgo.GoUInt8>)).__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L441"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L442"
            return { _0 : (null : stdgo._internal.io.Io_reader.Reader), _1 : _err };
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L448"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ r : stdgo.Go.asInterface(stdgo._internal.crypto.ecdsa.Ecdsa__zeroreader._zeroReader), s : stdgo._internal.crypto.cipher.Cipher_newctr.newCTR(_block, ((("IV for ECDSA CTR" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) } : stdgo._internal.crypto.cipher.Cipher_streamreader.StreamReader)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_streamreader.StreamReader>)), _1 : (null : stdgo.Error) };
    }
