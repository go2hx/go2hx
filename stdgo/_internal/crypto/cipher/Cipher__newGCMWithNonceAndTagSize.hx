package stdgo._internal.crypto.cipher;
function _newGCMWithNonceAndTagSize(_cipher:stdgo._internal.crypto.cipher.Cipher_Block.Block, _nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; } {
        if (((_tagSize < (12 : stdgo.GoInt) : Bool) || (_tagSize > (16 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: incorrect tag size given to GCM" : stdgo.GoString)) };
        };
        if ((_nonceSize <= (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: the nonce can\'t have zero length, or the security of the key will be immediately compromised" : stdgo.GoString)) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cipher) : stdgo._internal.crypto.cipher.Cipher_T_gcmAble.T_gcmAble)) : stdgo._internal.crypto.cipher.Cipher_T_gcmAble.T_gcmAble), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.crypto.cipher.Cipher_T_gcmAble.T_gcmAble), _1 : false };
            }, _cipher = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _cipher.newGCM(_nonceSize, _tagSize);
            };
        };
        if (_cipher.blockSize() != ((16 : stdgo.GoInt))) {
            return { _0 : (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD), _1 : stdgo._internal.errors.Errors_new_.new_(("cipher: NewGCM requires 128-bit block cipher" : stdgo.GoString)) };
        };
        var _key:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        _cipher.encrypt((_key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _g = (stdgo.Go.setRef(({ _cipher : _cipher, _nonceSize : _nonceSize, _tagSize : _tagSize } : stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm)) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm>);
        var _x = (new stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64((_key.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint64((_key.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement);
        _g._productTable[(stdgo._internal.crypto.cipher.Cipher__reverseBits._reverseBits((1 : stdgo.GoInt)) : stdgo.GoInt)] = _x?.__copy__();
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _g._productTable[(stdgo._internal.crypto.cipher.Cipher__reverseBits._reverseBits(_i) : stdgo.GoInt)] = stdgo._internal.crypto.cipher.Cipher__gcmDouble._gcmDouble((stdgo.Go.setRef(_g._productTable[(stdgo._internal.crypto.cipher.Cipher__reverseBits._reverseBits((_i / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>))?.__copy__();
                _g._productTable[(stdgo._internal.crypto.cipher.Cipher__reverseBits._reverseBits((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)] = stdgo._internal.crypto.cipher.Cipher__gcmAdd._gcmAdd((stdgo.Go.setRef(_g._productTable[(stdgo._internal.crypto.cipher.Cipher__reverseBits._reverseBits(_i) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>), (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>))?.__copy__();
            });
        };
        return { _0 : stdgo.Go.asInterface(_g), _1 : (null : stdgo.Error) };
    }