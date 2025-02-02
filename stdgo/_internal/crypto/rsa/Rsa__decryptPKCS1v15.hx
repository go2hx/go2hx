package stdgo._internal.crypto.rsa;
function _decryptPKCS1v15(_priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        var _valid = (0 : stdgo.GoInt), _em = (null : stdgo.Slice<stdgo.GoUInt8>), _index = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _k = (@:check2r _priv.size() : stdgo.GoInt);
        if ((_k < (11 : stdgo.GoInt) : Bool)) {
            _err = stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption;
            return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
        };
        if (false) {
            var _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyRSA.PrivateKeyRSA>);
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringPrivateKey._boringPrivateKey(_priv);
                _bkey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_decryptRSANoPadding.decryptRSANoPadding(_bkey, _ciphertext);
                _em = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _ciphertext, false);
                _em = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
            };
        };
        var _firstByteIsZero = (stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_em[(0 : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _secondByteIsTwo = (stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_em[(1 : stdgo.GoInt)], (2 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _lookingForIndex = (1 : stdgo.GoInt);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (_em.length) : Bool)) {
                var _equals0 = (stdgo._internal.crypto.subtle.Subtle_constantTimeByteEq.constantTimeByteEq(_em[(_i : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
_index = stdgo._internal.crypto.subtle.Subtle_constantTimeSelect.constantTimeSelect((_lookingForIndex & _equals0 : stdgo.GoInt), _i, _index);
_lookingForIndex = stdgo._internal.crypto.subtle.Subtle_constantTimeSelect.constantTimeSelect(_equals0, (0 : stdgo.GoInt), _lookingForIndex);
                _i++;
            };
        };
        var _validPS = (stdgo._internal.crypto.subtle.Subtle_constantTimeLessOrEq.constantTimeLessOrEq((10 : stdgo.GoInt), _index) : stdgo.GoInt);
        _valid = (((_firstByteIsZero & _secondByteIsTwo : stdgo.GoInt) & (((-1 ^ _lookingForIndex) & (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) & _validPS : stdgo.GoInt);
        _index = stdgo._internal.crypto.subtle.Subtle_constantTimeSelect.constantTimeSelect(_valid, (_index + (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoInt));
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : _valid, _1 : _em, _2 : _index, _3 : (null : stdgo.Error) };
            _valid = __tmp__._0;
            _em = __tmp__._1;
            _index = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
