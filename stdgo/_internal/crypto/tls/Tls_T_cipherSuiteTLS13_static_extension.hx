package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_cipherSuiteTLS13_asInterface) class T_cipherSuiteTLS13_static_extension {
    @:keep
    static public function _exportKeyingMaterial( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _masterSecret:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_Hash.Hash):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = _c;
        var _expMasterSecret = _c._deriveSecret(_masterSecret, ("exp master" : stdgo.GoString), _transcript);
        return function(_label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var _secret = _c._deriveSecret(_expMasterSecret, _label?.__copy__(), (null : stdgo._internal.hash.Hash_Hash.Hash));
            var _h = (_c._hash.new_() : stdgo._internal.hash.Hash_Hash.Hash);
            _h.write(_context);
            return { _0 : _c._expandLabel(_secret, ("exporter" : stdgo.GoString), _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), _length), _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    static public function _finishedHash( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _baseKey:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = _c;
        var _finishedKey = _c._expandLabel(_baseKey, ("finished" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), _c._hash.size());
        var _verifyData = (stdgo._internal.crypto.hmac.Hmac_new_.new_(_c._hash.new_, _finishedKey) : stdgo._internal.hash.Hash_Hash.Hash);
        _verifyData.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        return _verifyData.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _trafficKey( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _trafficSecret:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = _c;
        var _key = (null : stdgo.Slice<stdgo.GoUInt8>), _iv = (null : stdgo.Slice<stdgo.GoUInt8>);
        _key = _c._expandLabel(_trafficSecret, ("key" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), _c._keyLen);
        _iv = _c._expandLabel(_trafficSecret, ("iv" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (12 : stdgo.GoInt));
        return { _0 : _key, _1 : _iv };
    }
    @:keep
    static public function _nextTrafficSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _trafficSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = _c;
        return _c._expandLabel(_trafficSecret, ("traffic upd" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), _c._hash.size());
    }
    @:keep
    static public function _extract( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _newSecret:stdgo.Slice<stdgo.GoUInt8>, _currentSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = _c;
        if (_newSecret == null) {
            _newSecret = (new stdgo.Slice<stdgo.GoUInt8>((_c._hash.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _internal.golang_dot_org.x.crypto.hkdf.Hkdf_extract.extract(_c._hash.new_, _newSecret, _currentSecret);
    }
    @:keep
    static public function _deriveSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = _c;
        if (_transcript == null) {
            _transcript = _c._hash.new_();
        };
        return _c._expandLabel(_secret, _label?.__copy__(), _transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)), _c._hash.size());
    }
    @:keep
    static public function _expandLabel( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13> = _c;
        var _hkdfLabel:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _hkdfLabel.addUint16((_length : stdgo.GoUInt16));
        _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addBytes((("tls13 " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _b.addBytes((_label : stdgo.Slice<stdgo.GoUInt8>));
        });
        _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addBytes(_context);
        });
        var __tmp__ = _hkdfLabel.bytes(), _hkdfLabelBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("failed to construct HKDF label: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _internal.golang_dot_org.x.crypto.hkdf.Hkdf_expand.expand(_c._hash.new_, _secret, _hkdfLabelBytes).read(_out), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_n != _length) : Bool)) {
            throw stdgo.Go.toInterface(("tls: HKDF-Expand-Label invocation failed unexpectedly" : stdgo.GoString));
        };
        return _out;
    }
}
