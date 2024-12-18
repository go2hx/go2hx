package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_halfConn_asInterface) class T_halfConn_static_extension {
    @:keep
    static public function _encrypt( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>, _record:stdgo.Slice<stdgo.GoUInt8>, _payload:stdgo.Slice<stdgo.GoUInt8>, _rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        if (_hc._cipher == null) {
            return { _0 : (_record.__append__(...(_payload : Array<stdgo.GoUInt8>))), _1 : (null : stdgo.Error) };
        };
        var _explicitNonce:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _explicitNonceLen = (_hc._explicitNonceLen() : stdgo.GoInt);
            if ((_explicitNonceLen > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceForAppend._sliceForAppend(_record, _explicitNonceLen);
                    _record = __tmp__._0;
                    _explicitNonce = __tmp__._1;
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_hc._cipher : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode)) : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode), _1 : false };
                    }, __65 = __tmp__._0, _isCBC = __tmp__._1;
                    if ((!_isCBC && (_explicitNonceLen < (16 : stdgo.GoInt) : Bool) : Bool)) {
                        _explicitNonce.__copyTo__((_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    } else {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _explicitNonce), __66:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            final __type__ = _hc._cipher;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_Stream.Stream))) {
                var _c:stdgo._internal.crypto.cipher.Cipher_Stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__().value;
                var _mac = stdgo._internal.crypto.tls.Tls__tls10MAC._tls10MAC(_hc._mac, (_hc._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _payload, (null : stdgo.Slice<stdgo.GoUInt8>));
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceForAppend._sliceForAppend(_record, ((_payload.length) + (_mac.length) : stdgo.GoInt));
                    _record = __tmp__._0;
                    _dst = __tmp__._1;
                };
                _c.xorkeyStream((_dst.__slice__(0, (_payload.length)) : stdgo.Slice<stdgo.GoUInt8>), _payload);
                _c.xorkeyStream((_dst.__slice__((_payload.length)) : stdgo.Slice<stdgo.GoUInt8>), _mac);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_T_aead.T_aead))) {
                var _c:stdgo._internal.crypto.tls.Tls_T_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__.__underlying__().value;
                var _nonce = _explicitNonce;
                if ((_nonce.length) == ((0 : stdgo.GoInt))) {
                    _nonce = (_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                };
                if (_hc._version == ((772 : stdgo.GoUInt16))) {
                    _record = (_record.__append__(...(_payload : Array<stdgo.GoUInt8>)));
                    _record = (_record.__append__(_record[(0 : stdgo.GoInt)]));
                    _record[(0 : stdgo.GoInt)] = ((23 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType) : stdgo.GoUInt8);
                    var _n = (((_payload.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + _c.overhead() : stdgo.GoInt);
                    _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                    _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
                    _record = _c.seal((_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce, (_record.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    var _additionalData = ((_hc._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _additionalData = (_additionalData.__append__(...((_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _record = _c.seal(_record, _nonce, _payload, _additionalData);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode))) {
                var _c:stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__().value;
                var _mac = stdgo._internal.crypto.tls.Tls__tls10MAC._tls10MAC(_hc._mac, (_hc._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _payload, (null : stdgo.Slice<stdgo.GoUInt8>));
                var _blockSize = (_c.blockSize() : stdgo.GoInt);
                var _plaintextLen = ((_payload.length) + (_mac.length) : stdgo.GoInt);
                var _paddingLen = (_blockSize - (_plaintextLen % _blockSize : stdgo.GoInt) : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceForAppend._sliceForAppend(_record, (_plaintextLen + _paddingLen : stdgo.GoInt));
                    _record = __tmp__._0;
                    _dst = __tmp__._1;
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
        _hc._incSeq();
        return { _0 : _record, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _decrypt( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>, _record:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType; var _2 : stdgo.Error; } {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        var _plaintext:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _typ = (_record[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType);
        var _payload = (_record.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_hc._version == (772 : stdgo.GoUInt16)) && (_typ == (20 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType)) : Bool)) {
            return { _0 : _payload, _1 : _typ, _2 : (null : stdgo.Error) };
        };
        var _paddingGood = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _paddingLen = (0 : stdgo.GoInt);
        var _explicitNonceLen = (_hc._explicitNonceLen() : stdgo.GoInt);
        if (_hc._cipher != null) {
            {
                final __type__ = _hc._cipher;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_Stream.Stream))) {
                    var _c:stdgo._internal.crypto.cipher.Cipher_Stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__().value;
                    _c.xorkeyStream(_payload, _payload);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_T_aead.T_aead))) {
                    var _c:stdgo._internal.crypto.tls.Tls_T_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__.__underlying__().value;
                    if (((_payload.length) < _explicitNonceLen : Bool)) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                    };
                    var _nonce = (_payload.__slice__(0, _explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    if ((_nonce.length) == ((0 : stdgo.GoInt))) {
                        _nonce = (_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _payload = (_payload.__slice__(_explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    var _additionalData:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                    if (_hc._version == ((772 : stdgo.GoUInt16))) {
                        _additionalData = (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _additionalData = ((_hc._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        _additionalData = (_additionalData.__append__(...((_record.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                        var _n = ((_payload.length) - _c.overhead() : stdgo.GoInt);
                        _additionalData = (_additionalData.__append__(((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_n : stdgo.GoUInt8)));
                    };
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _c.open((_payload.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce, _payload, _additionalData);
                        _plaintext = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode))) {
                    var _c:stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__().value;
                    var _blockSize = (_c.blockSize() : stdgo.GoInt);
                    var _minPayload = (_explicitNonceLen + stdgo._internal.crypto.tls.Tls__roundUp._roundUp((_hc._mac.size() + (1 : stdgo.GoInt) : stdgo.GoInt), _blockSize) : stdgo.GoInt);
                    if (((((_payload.length) % _blockSize : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_payload.length) < _minPayload : Bool) : Bool)) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                    };
                    if ((_explicitNonceLen > (0 : stdgo.GoInt) : Bool)) {
                        _c.setIV((_payload.__slice__(0, _explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>));
                        _payload = (_payload.__slice__(_explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _c.cryptBlocks(_payload, _payload);
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__extractPadding._extractPadding(_payload);
                        _paddingLen = __tmp__._0;
                        _paddingGood = __tmp__._1;
                    };
                } else {
                    var _c:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(("unknown cipher type" : stdgo.GoString));
                };
            };
            if (_hc._version == ((772 : stdgo.GoUInt16))) {
                if (_typ != ((23 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType))) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                };
                if (((_plaintext.length) > (16385 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((22 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                };
                {
                    var _i = ((_plaintext.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        if (_plaintext[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                            _typ = (_plaintext[(_i : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType);
                            _plaintext = (_plaintext.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                            break;
                        };
if (_i == ((0 : stdgo.GoInt))) {
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((10 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
                        };
                        _i--;
                    };
                };
            };
        } else {
            _plaintext = _payload;
        };
        if (_hc._mac != null) {
            var _macSize = (_hc._mac.size() : stdgo.GoInt);
            if (((_payload.length) < _macSize : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
            };
            var _n = (((_payload.length) - _macSize : stdgo.GoInt) - _paddingLen : stdgo.GoInt);
            _n = stdgo._internal.crypto.subtle.Subtle_constantTimeSelect.constantTimeSelect((((_n : stdgo.GoUInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), (0 : stdgo.GoInt), _n);
            _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
            var _remoteMAC = (_payload.__slice__(_n, (_n + _macSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _localMAC = stdgo._internal.crypto.tls.Tls__tls10MAC._tls10MAC(_hc._mac, (_hc._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_hc._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_payload.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (_payload.__slice__((_n + _macSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _macAndPaddingGood = (stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_localMAC, _remoteMAC) & (_paddingGood : stdgo.GoInt) : stdgo.GoInt);
            if (_macAndPaddingGood != ((1 : stdgo.GoInt))) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_T_recordType.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert)) };
            };
            _plaintext = (_payload.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _hc._incSeq();
        return { _0 : _plaintext, _1 : _typ, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _explicitNonceLen( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>):stdgo.GoInt {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        if (_hc._cipher == null) {
            return (0 : stdgo.GoInt);
        };
        {
            final __type__ = _hc._cipher;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.cipher.Cipher_Stream.Stream))) {
                var _c:stdgo._internal.crypto.cipher.Cipher_Stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_Stream.Stream) : __type__.__underlying__().value;
                return (0 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_T_aead.T_aead))) {
                var _c:stdgo._internal.crypto.tls.Tls_T_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_aead.T_aead) : __type__.__underlying__().value;
                return _c._explicitNonceLen();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode))) {
                var _c:stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_T_cbcMode.T_cbcMode) : __type__.__underlying__().value;
                if ((_hc._version >= (770 : stdgo.GoUInt16) : Bool)) {
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
    static public function _incSeq( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        {
            var _i = (7 : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _hc._seq[(_i : stdgo.GoInt)]++;
if (_hc._seq[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    return;
                };
                _i--;
            };
        };
        throw stdgo.Go.toInterface(("TLS: sequence number wraparound" : stdgo.GoString));
    }
    @:keep
    static public function _setTrafficSecret( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        _hc._trafficSecret = _secret;
        _hc._level = _level;
        var __tmp__ = _suite._trafficKey(_secret), _key:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _iv:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        _hc._cipher = stdgo.Go.toInterface(_suite._aead(_key, _iv));
        for (_i => _ in _hc._seq) {
            _hc._seq[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
    @:keep
    static public function _changeCipherSpec( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>):stdgo.Error {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        if (((_hc._nextCipher == null) || (_hc._version == (772 : stdgo.GoUInt16)) : Bool)) {
            return stdgo.Go.asInterface((80 : stdgo._internal.crypto.tls.Tls_T_alert.T_alert));
        };
        _hc._cipher = _hc._nextCipher;
        _hc._mac = _hc._nextMac;
        _hc._nextCipher = (null : stdgo.AnyInterface);
        _hc._nextMac = (null : stdgo._internal.hash.Hash_Hash.Hash);
        for (_i => _ in _hc._seq) {
            _hc._seq[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _prepareCipherSpec( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>, _version:stdgo.GoUInt16, _cipher:stdgo.AnyInterface, _mac:stdgo._internal.hash.Hash_Hash.Hash):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        _hc._version = _version;
        _hc._nextCipher = _cipher;
        _hc._nextMac = _mac;
    }
    @:keep
    static public function _setErrorLocked( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn>, _err:stdgo.Error):stdgo.Error {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn> = _hc;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _hc._err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : _e } : stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError>));
            } else {
                _hc._err = _err;
            };
        };
        return _hc._err;
    }
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn, __0:stdgo.GoInt32) __self__._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.crypto.tls.Tls_T_halfConn.T_halfConn) __self__.lock();
}
