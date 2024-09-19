package stdgo._internal.crypto.ecdsa;
function _mixedCSPRNG(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        var _entropy = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _entropy), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_Reader.Reader), _1 : _err };
            };
        };
        var _md = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        _md.write(_priv.d.bytes());
        _md.write(_entropy);
        _md.write(_hash);
        var _key = (_md.sum((null : stdgo.Slice<stdgo.GoUInt8>)).__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newCipher.newCipher(_key), _block:stdgo._internal.crypto.cipher.Cipher_Block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_Reader.Reader), _1 : _err };
        };
        {};
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ r : stdgo.Go.asInterface(stdgo._internal.crypto.ecdsa.Ecdsa__zeroReader._zeroReader), s : stdgo._internal.crypto.cipher.Cipher_newCTR.newCTR(_block, (("IV for ECDSA CTR" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) } : stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_StreamReader.StreamReader>)), _1 : (null : stdgo.Error) };
    }