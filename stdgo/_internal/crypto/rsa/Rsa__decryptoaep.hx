package stdgo._internal.crypto.rsa;
function _decryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _mgfHash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub((stdgo.Go.setRef((@:checkr _priv ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _k = (@:check2r _priv.size() : stdgo.GoInt);
        if ((((_ciphertext.length) > _k : Bool) || (_k < ((_hash.size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
        };
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_decryptrsaoaep.decryptRSAOAEP(_hash, _mgfHash, _bkey, _ciphertext, _label), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            return { _0 : _out, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _ciphertext, false), _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _hash.write(_label);
        var _lHash = _hash.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        _hash.reset();
        var _firstByteIsZero = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(0 : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _seed = (_em.__slice__((1 : stdgo.GoInt), (_hash.size() + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _db = (_em.__slice__((_hash.size() + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_seed, _mgfHash, _db);
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_db, _mgfHash, _seed);
        var _lHash2 = (_db.__slice__((0 : stdgo.GoInt), _hash.size()) : stdgo.Slice<stdgo.GoUInt8>);
        var _lHash2Good = (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_lHash, _lHash2) : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _invalid = __2, _index = __1, _lookingForIndex = __0;
        _lookingForIndex = (1 : stdgo.GoInt);
        var _rest = (_db.__slice__(_hash.size()) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_rest.length) : Bool)) {
                var _equals0 = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_rest[(_i : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
var _equals1 = (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_rest[(_i : stdgo.GoInt)], (1 : stdgo.GoUInt8)) : stdgo.GoInt);
_index = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect((_lookingForIndex & _equals1 : stdgo.GoInt), _i, _index);
_lookingForIndex = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect(_equals1, (0 : stdgo.GoInt), _lookingForIndex);
_invalid = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect((_lookingForIndex & ((_equals0 ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt), (1 : stdgo.GoInt), _invalid);
                _i++;
            };
        };
        if ((((_firstByteIsZero & _lHash2Good : stdgo.GoInt) & ((_invalid ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt) & ((_lookingForIndex ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt) != ((1 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
        };
        return { _0 : (_rest.__slice__((_index + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
