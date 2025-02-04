package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_cipherSuiteTLS13_asInterface) class T_cipherSuiteTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _exportKeyingMaterial( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _masterSecret:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_hash.Hash):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _expMasterSecret = @:check2r _c._deriveSecret(_masterSecret, ("exp master" : stdgo.GoString), _transcript);
        return function(_label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var _secret = @:check2r _c._deriveSecret(_expMasterSecret, _label?.__copy__(), (null : stdgo._internal.hash.Hash_hash.Hash));
            var _h = ((@:checkr _c ?? throw "null pointer dereference")._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
            _h.write(_context);
            return { _0 : @:check2r _c._expandLabel(_secret, ("exporter" : stdgo.GoString), _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), _length), _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    @:tdfield
    static public function _finishedHash( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _baseKey:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _finishedKey = @:check2r _c._expandLabel(_baseKey, ("finished" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _c ?? throw "null pointer dereference")._hash.size());
        var _verifyData = (stdgo._internal.crypto.hmac.Hmac_new_.new_((@:checkr _c ?? throw "null pointer dereference")._hash.new_, _finishedKey) : stdgo._internal.hash.Hash_hash.Hash);
        _verifyData.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        return _verifyData.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _trafficKey( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _trafficSecret:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _key = (null : stdgo.Slice<stdgo.GoUInt8>), _iv = (null : stdgo.Slice<stdgo.GoUInt8>);
        _key = @:check2r _c._expandLabel(_trafficSecret, ("key" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _c ?? throw "null pointer dereference")._keyLen);
        _iv = @:check2r _c._expandLabel(_trafficSecret, ("iv" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (12 : stdgo.GoInt));
        return { _0 : _key, _1 : _iv };
    }
    @:keep
    @:tdfield
    static public function _nextTrafficSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _trafficSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        return @:check2r _c._expandLabel(_trafficSecret, ("traffic upd" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _c ?? throw "null pointer dereference")._hash.size());
    }
    @:keep
    @:tdfield
    static public function _extract( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _newSecret:stdgo.Slice<stdgo.GoUInt8>, _currentSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        if (_newSecret == null) {
            _newSecret = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _c ?? throw "null pointer dereference")._hash.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _internal.golang_dot_org.x.crypto.hkdf.Hkdf_extract.extract((@:checkr _c ?? throw "null pointer dereference")._hash.new_, _newSecret, _currentSecret);
    }
    @:keep
    @:tdfield
    static public function _deriveSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        if (_transcript == null) {
            _transcript = (@:checkr _c ?? throw "null pointer dereference")._hash.new_();
        };
        return @:check2r _c._expandLabel(_secret, _label?.__copy__(), _transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)), (@:checkr _c ?? throw "null pointer dereference")._hash.size());
    }
    @:keep
    @:tdfield
    static public function _expandLabel( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _hkdfLabel:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _hkdfLabel.addUint16((_length : stdgo.GoUInt16));
        @:check2 _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addBytes(((("tls13 " : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            @:check2r _b.addBytes((_label : stdgo.Slice<stdgo.GoUInt8>));
        });
        @:check2 _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addBytes(_context);
        });
        var __tmp__ = @:check2 _hkdfLabel.bytes(), _hkdfLabelBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("failed to construct HKDF label: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _internal.golang_dot_org.x.crypto.hkdf.Hkdf_expand.expand((@:checkr _c ?? throw "null pointer dereference")._hash.new_, _secret, _hkdfLabelBytes).read(_out), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_n != _length) : Bool)) {
            throw stdgo.Go.toInterface(("tls: HKDF-Expand-Label invocation failed unexpectedly" : stdgo.GoString));
        };
        return _out;
    }
}
