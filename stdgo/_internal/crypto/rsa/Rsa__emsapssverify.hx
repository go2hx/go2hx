package stdgo._internal.crypto.rsa;
function _emsaPSSVerify(_mHash:stdgo.Slice<stdgo.GoUInt8>, _em:stdgo.Slice<stdgo.GoUInt8>, _emBits:stdgo.GoInt, _sLen:stdgo.GoInt, _hash:stdgo._internal.hash.Hash_hash.Hash):stdgo.Error {
        var _hLen = (_hash.size() : stdgo.GoInt);
        if (_sLen == ((-1 : stdgo.GoInt))) {
            _sLen = _hLen;
        };
        var _emLen = (((_emBits + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        if (_emLen != ((_em.length))) {
            return stdgo._internal.errors.Errors_new_.new_(("rsa: internal error: inconsistent length" : stdgo.GoString));
        };
        if (_hLen != ((_mHash.length))) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        if ((_emLen < ((_hLen + _sLen : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        if (_em[(_emLen - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((188 : stdgo.GoUInt8))) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        var _db = (_em.__slice__(0, ((_emLen - _hLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _h = (_em.__slice__(((_emLen - _hLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (_emLen - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _bitMask:stdgo.GoUInt8 = ((255 : stdgo.GoUInt8) >> ((((8 : stdgo.GoInt) * _emLen : stdgo.GoInt) - _emBits : stdgo.GoInt)) : stdgo.GoUInt8);
        if ((_em[(0 : stdgo.GoInt)] & (-1 ^ _bitMask) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_db, _hash, _h);
        _db[(0 : stdgo.GoInt)] = (_db[(0 : stdgo.GoInt)] & (_bitMask) : stdgo.GoUInt8);
        if (_sLen == ((0 : stdgo.GoInt))) {
            var _psLen = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_db, (1 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_psLen < (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
            };
            _sLen = (((_db.length) - _psLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _psLen = (((_emLen - _hLen : stdgo.GoInt) - _sLen : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
        for (__0 => _e in (_db.__slice__(0, _psLen) : stdgo.Slice<stdgo.GoUInt8>)) {
            if (_e != ((0 : stdgo.GoUInt8))) {
                return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
            };
        };
        if (_db[(_psLen : stdgo.GoInt)] != ((1 : stdgo.GoUInt8))) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        var _salt = (_db.__slice__(((_db.length) - _sLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _prefix:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        _hash.write((_prefix.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _hash.write(_mHash);
        _hash.write(_salt);
        var _h0 = _hash.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        if (!stdgo._internal.bytes.Bytes_equal.equal(_h0, _h)) {
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        return (null : stdgo.Error);
    }
