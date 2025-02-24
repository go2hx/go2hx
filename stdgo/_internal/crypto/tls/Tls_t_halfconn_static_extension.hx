package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_halfConn_asInterface) class T_halfConn_static_extension {
    @:keep
    @:tdfield
    static public function _encrypt( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _record:stdgo.Slice<stdgo.GoUInt8>, _payload:stdgo.Slice<stdgo.GoUInt8>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        if ((@:checkr _hc ?? throw "null pointer dereference")._cipher == null) {
            return { _0 : (_record.__append__(...(_payload : Array<stdgo.GoUInt8>))), _1 : (null : stdgo.Error) };
        };
        var _explicitNonce:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _explicitNonceLen = (@:check2r _hc._explicitNonceLen() : stdgo.GoInt);
            if ((_explicitNonceLen > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend(_record, _explicitNonceLen);
                    _record = @:tmpset0 __tmp__._0;
                    _explicitNonce = @:tmpset0 __tmp__._1;
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _hc ?? throw "null pointer dereference")._cipher : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode)) : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode), _1 : false };
                    }, __65 = __tmp__._0, _isCBC = __tmp__._1;
                    if ((!_isCBC && (_explicitNonceLen < (16 : stdgo.GoInt) : Bool) : Bool)) {
                        _explicitNonce.__copyTo__(((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    } else {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _explicitNonce), __66:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                            };
                        };
                    };
                };
            };
        };
        var _dst:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            final __type__ = (@:checkr _hc ?? throw "null pointer dereference")._cipher;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_stream.Stream))) {
                var _c:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                var _mac = stdgo._internal.crypto.tls.Tls__tls10mac._tls10MAC((@:checkr _hc ?? throw "null pointer dereference")._mac, ((@:checkr _hc ?? throw "null pointer dereference")._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _payload, (null : stdgo.Slice<stdgo.GoUInt8>));
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend(_record, ((_payload.length) + (_mac.length) : stdgo.GoInt));
                    _record = @:tmpset0 __tmp__._0;
                    _dst = @:tmpset0 __tmp__._1;
                };
                _c.xORKeyStream((_dst.__slice__(0, (_payload.length)) : stdgo.Slice<stdgo.GoUInt8>), _payload);
                _c.xORKeyStream((_dst.__slice__((_payload.length)) : stdgo.Slice<stdgo.GoUInt8>), _mac);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_t_aead.T_aead))) {
                var _c:stdgo._internal.crypto.tls.Tls_t_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__().value;
                var _nonce = _explicitNonce;
                if ((_nonce.length) == ((0 : stdgo.GoInt))) {
                    _nonce = ((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                };
                if ((@:checkr _hc ?? throw "null pointer dereference")._version == ((772 : stdgo.GoUInt16))) {
                    _record = (_record.__append__(...(_payload : Array<stdgo.GoUInt8>)));
                    _record = (_record.__append__(_record[(0 : stdgo.GoInt)]));
                    _record[(0 : stdgo.GoInt)] = ((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType) : stdgo.GoUInt8);
                    var _n = (((_payload.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + _c.overhead() : stdgo.GoInt);
                    _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                    _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
                    _record = _c.seal((_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce, (_record.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    var _additionalData = (((@:checkr _hc ?? throw "null pointer dereference")._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _additionalData = (_additionalData.__append__(...((_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _record = _c.seal(_record, _nonce, _payload, _additionalData);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode))) {
                var _c:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                var _mac = stdgo._internal.crypto.tls.Tls__tls10mac._tls10MAC((@:checkr _hc ?? throw "null pointer dereference")._mac, ((@:checkr _hc ?? throw "null pointer dereference")._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _payload, (null : stdgo.Slice<stdgo.GoUInt8>));
                var _blockSize = (_c.blockSize() : stdgo.GoInt);
                var _plaintextLen = ((_payload.length) + (_mac.length) : stdgo.GoInt);
                var _paddingLen = (_blockSize - (_plaintextLen % _blockSize : stdgo.GoInt) : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend(_record, (_plaintextLen + _paddingLen : stdgo.GoInt));
                    _record = @:tmpset0 __tmp__._0;
                    _dst = @:tmpset0 __tmp__._1;
                };
                _dst.__copyTo__(_payload);
                (_dst.__slice__((_payload.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_mac);
                {
                    var _i = (_plaintextLen : stdgo.GoInt);
                    while ((_i < (_dst.length) : Bool)) {
                        _dst[(_i : stdgo.GoInt)] = ((_paddingLen - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _i++;
                    };
                };
                if (((_explicitNonce.length) > (0 : stdgo.GoInt) : Bool)) {
                    _c.setIV(_explicitNonce);
                };
                _c.cryptBlocks(_dst, _dst);
            } else {
                var _c:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(("unknown cipher type" : stdgo.GoString));
            };
        };
        var _n = ((_record.length) - (5 : stdgo.GoInt) : stdgo.GoInt);
        _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
        @:check2r _hc._incSeq();
        return { _0 : _record, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _decrypt( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _record:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType; var _2 : stdgo.Error; } {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        var _plaintext:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _typ = (_record[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType);
        var _payload = (_record.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((((@:checkr _hc ?? throw "null pointer dereference")._version == (772 : stdgo.GoUInt16)) && (_typ == (20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            return { _0 : _payload, _1 : _typ, _2 : (null : stdgo.Error) };
        };
        var _paddingGood = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _paddingLen = (0 : stdgo.GoInt);
        var _explicitNonceLen = (@:check2r _hc._explicitNonceLen() : stdgo.GoInt);
        if ((@:checkr _hc ?? throw "null pointer dereference")._cipher != null) {
            {
                final __type__ = (@:checkr _hc ?? throw "null pointer dereference")._cipher;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_stream.Stream))) {
                    var _c:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                    _c.xORKeyStream(_payload, _payload);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_t_aead.T_aead))) {
                    var _c:stdgo._internal.crypto.tls.Tls_t_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__().value;
                    if (((_payload.length) < _explicitNonceLen : Bool)) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                    };
                    var _nonce = (_payload.__slice__(0, _explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    if ((_nonce.length) == ((0 : stdgo.GoInt))) {
                        _nonce = ((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _payload = (_payload.__slice__(_explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    var _additionalData:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                    if ((@:checkr _hc ?? throw "null pointer dereference")._version == ((772 : stdgo.GoUInt16))) {
                        _additionalData = (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _additionalData = (((@:checkr _hc ?? throw "null pointer dereference")._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        _additionalData = (_additionalData.__append__(...((_record.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        var _n = ((_payload.length) - _c.overhead() : stdgo.GoInt);
                        _additionalData = (_additionalData.__append__(((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_n : stdgo.GoUInt8)));
                    };
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _c.open((_payload.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce, _payload, _additionalData);
                        _plaintext = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode))) {
                    var _c:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                    var _blockSize = (_c.blockSize() : stdgo.GoInt);
                    var _minPayload = (_explicitNonceLen + stdgo._internal.crypto.tls.Tls__roundup._roundUp(((@:checkr _hc ?? throw "null pointer dereference")._mac.size() + (1 : stdgo.GoInt) : stdgo.GoInt), _blockSize) : stdgo.GoInt);
                    if (((((_payload.length) % _blockSize : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_payload.length) < _minPayload : Bool) : Bool)) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                    };
                    if ((_explicitNonceLen > (0 : stdgo.GoInt) : Bool)) {
                        _c.setIV((_payload.__slice__(0, _explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>));
                        _payload = (_payload.__slice__(_explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _c.cryptBlocks(_payload, _payload);
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__extractpadding._extractPadding(_payload);
                        _paddingLen = @:tmpset0 __tmp__._0;
                        _paddingGood = @:tmpset0 __tmp__._1;
                    };
                } else {
                    var _c:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(("unknown cipher type" : stdgo.GoString));
                };
            };
            if ((@:checkr _hc ?? throw "null pointer dereference")._version == ((772 : stdgo.GoUInt16))) {
                if (_typ != ((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                };
                if (((_plaintext.length) > (16385 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((22 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                };
                {
                    var _i = ((_plaintext.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        if (_plaintext[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                            _typ = (_plaintext[(_i : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType);
                            _plaintext = (_plaintext.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                            break;
                        };
if (_i == ((0 : stdgo.GoInt))) {
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                        };
                        _i--;
                    };
                };
            };
        } else {
            _plaintext = _payload;
        };
        if ((@:checkr _hc ?? throw "null pointer dereference")._mac != null) {
            var _macSize = ((@:checkr _hc ?? throw "null pointer dereference")._mac.size() : stdgo.GoInt);
            if (((_payload.length) < _macSize : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
            };
            var _n = (((_payload.length) - _macSize : stdgo.GoInt) - _paddingLen : stdgo.GoInt);
            _n = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect((((_n : stdgo.GoUInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), (0 : stdgo.GoInt), _n);
            _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
            var _remoteMAC = (_payload.__slice__(_n, (_n + _macSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _localMAC = stdgo._internal.crypto.tls.Tls__tls10mac._tls10MAC((@:checkr _hc ?? throw "null pointer dereference")._mac, ((@:checkr _hc ?? throw "null pointer dereference")._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _hc ?? throw "null pointer dereference")._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_payload.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (_payload.__slice__((_n + _macSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _macAndPaddingGood = (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_localMAC, _remoteMAC) & (_paddingGood : stdgo.GoInt) : stdgo.GoInt);
            if (_macAndPaddingGood != ((1 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
            };
            _plaintext = (_payload.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        @:check2r _hc._incSeq();
        return { _0 : _plaintext, _1 : _typ, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _explicitNonceLen( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>):stdgo.GoInt {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        if ((@:checkr _hc ?? throw "null pointer dereference")._cipher == null) {
            return (0 : stdgo.GoInt);
        };
        {
            final __type__ = (@:checkr _hc ?? throw "null pointer dereference")._cipher;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_stream.Stream))) {
                var _c:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                return (0 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_t_aead.T_aead))) {
                var _c:stdgo._internal.crypto.tls.Tls_t_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__().value;
                return _c._explicitNonceLen();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode))) {
                var _c:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                if (((@:checkr _hc ?? throw "null pointer dereference")._version >= (770 : stdgo.GoUInt16) : Bool)) {
                    return _c.blockSize();
                };
                return (0 : stdgo.GoInt);
            } else {
                var _c:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(("unknown cipher type" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _incSeq( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        {
            var _i = (7 : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _hc ?? throw "null pointer dereference")._seq[(_i : stdgo.GoInt)]++;
if ((@:checkr _hc ?? throw "null pointer dereference")._seq[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    return;
                };
                _i--;
            };
        };
        throw stdgo.Go.toInterface(("TLS: sequence number wraparound" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _setTrafficSecret( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        (@:checkr _hc ?? throw "null pointer dereference")._trafficSecret = _secret;
        (@:checkr _hc ?? throw "null pointer dereference")._level = _level;
        var __tmp__ = @:check2r _suite._trafficKey(_secret), _key:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _iv:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        (@:checkr _hc ?? throw "null pointer dereference")._cipher = stdgo.Go.toInterface((@:checkr _suite ?? throw "null pointer dereference")._aead(_key, _iv));
        for (_i => _ in (@:checkr _hc ?? throw "null pointer dereference")._seq) {
            (@:checkr _hc ?? throw "null pointer dereference")._seq[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _changeCipherSpec( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>):stdgo.Error {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        if ((((@:checkr _hc ?? throw "null pointer dereference")._nextCipher == null) || ((@:checkr _hc ?? throw "null pointer dereference")._version == (772 : stdgo.GoUInt16)) : Bool)) {
            return stdgo.Go.asInterface((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        (@:checkr _hc ?? throw "null pointer dereference")._cipher = (@:checkr _hc ?? throw "null pointer dereference")._nextCipher;
        (@:checkr _hc ?? throw "null pointer dereference")._mac = (@:checkr _hc ?? throw "null pointer dereference")._nextMac;
        (@:checkr _hc ?? throw "null pointer dereference")._nextCipher = (null : stdgo.AnyInterface);
        (@:checkr _hc ?? throw "null pointer dereference")._nextMac = (null : stdgo._internal.hash.Hash_hash.Hash);
        for (_i => _ in (@:checkr _hc ?? throw "null pointer dereference")._seq) {
            (@:checkr _hc ?? throw "null pointer dereference")._seq[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _prepareCipherSpec( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _version:stdgo.GoUInt16, _cipher:stdgo.AnyInterface, _mac:stdgo._internal.hash.Hash_hash.Hash):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        (@:checkr _hc ?? throw "null pointer dereference")._version = _version;
        (@:checkr _hc ?? throw "null pointer dereference")._nextCipher = _cipher;
        (@:checkr _hc ?? throw "null pointer dereference")._nextMac = _mac;
    }
    @:keep
    @:tdfield
    static public function _setErrorLocked( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _err:stdgo.Error):stdgo.Error {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_error.Error)) : stdgo._internal.net.Net_error.Error), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.Net_error.Error), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _hc ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : _e } : stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError>));
            } else {
                (@:checkr _hc ?? throw "null pointer dereference")._err = _err;
            };
        };
        return (@:checkr _hc ?? throw "null pointer dereference")._err;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Void return @:_5 __self__.lock();
}
