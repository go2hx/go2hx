package stdgo._internal.crypto.cipher;
function _newGCMWithNonceAndTagSize(_cipher:stdgo._internal.crypto.cipher.Cipher_block.Block, _nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L113"
        if (((_tagSize < (12 : stdgo.GoInt) : Bool) || (_tagSize > (16 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L114"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: incorrect tag size given to GCM" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L117"
        if ((_nonceSize <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L118"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: the nonce can\'t have zero length, or the security of the key will be immediately compromised" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L121"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cipher) : stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble)) : stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble), _1 : false };
            }, _cipher = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L122"
                return _cipher.newGCM(_nonceSize, _tagSize);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L125"
        if (_cipher.blockSize() != ((16 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L126"
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: NewGCM requires 128-bit block cipher" : stdgo.GoString)) };
        };
        var _key:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L130"
        _cipher.encrypt((_key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _g = (stdgo.Go.setRef(({ _cipher : _cipher, _nonceSize : _nonceSize, _tagSize : _tagSize } : stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        var _x = (new stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_key.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_key.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        (@:checkr _g ?? throw "null pointer dereference")._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits((1 : stdgo.GoInt)) : stdgo.GoInt)] = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L145"
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                (@:checkr _g ?? throw "null pointer dereference")._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits(_i) : stdgo.GoInt)] = stdgo._internal.crypto.cipher.Cipher__gcmdouble._gcmDouble((stdgo.Go.setRef((@:checkr _g ?? throw "null pointer dereference")._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits((_i / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>)).__copy__();
(@:checkr _g ?? throw "null pointer dereference")._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)] = stdgo._internal.crypto.cipher.Cipher__gcmadd._gcmAdd((stdgo.Go.setRef((@:checkr _g ?? throw "null pointer dereference")._productTable[(stdgo._internal.crypto.cipher.Cipher__reversebits._reverseBits(_i) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>)).__copy__();
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L150"
        return { _0 : stdgo.Go.asInterface(_g), _1 : (null : stdgo.Error) };
    }
