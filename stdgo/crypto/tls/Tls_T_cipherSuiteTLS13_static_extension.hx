package stdgo.crypto.tls;
class T_cipherSuiteTLS13_static_extension {
    static public function _exportKeyingMaterial(_c:T_cipherSuiteTLS13, _masterSecret:Array<std.UInt>, _transcript:stdgo._internal.hash.Hash_Hash.Hash):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _masterSecret = ([for (i in _masterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return (_0, _1, _2) -> stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13_static_extension.T_cipherSuiteTLS13_static_extension._exportKeyingMaterial(_c, _masterSecret, _transcript)(_0, [for (i in _1) i], _2);
    }
    static public function _finishedHash(_c:T_cipherSuiteTLS13, _baseKey:Array<std.UInt>, _transcript:stdgo._internal.hash.Hash_Hash.Hash):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _baseKey = ([for (i in _baseKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13_static_extension.T_cipherSuiteTLS13_static_extension._finishedHash(_c, _baseKey, _transcript)) i];
    }
    static public function _trafficKey(_c:T_cipherSuiteTLS13, _trafficSecret:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, Array<std.UInt>> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _trafficSecret = ([for (i in _trafficSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13_static_extension.T_cipherSuiteTLS13_static_extension._trafficKey(_c, _trafficSecret);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i] };
        };
    }
    static public function _nextTrafficSecret(_c:T_cipherSuiteTLS13, _trafficSecret:Array<std.UInt>):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _trafficSecret = ([for (i in _trafficSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13_static_extension.T_cipherSuiteTLS13_static_extension._nextTrafficSecret(_c, _trafficSecret)) i];
    }
    static public function _extract(_c:T_cipherSuiteTLS13, _newSecret:Array<std.UInt>, _currentSecret:Array<std.UInt>):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _newSecret = ([for (i in _newSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _currentSecret = ([for (i in _currentSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13_static_extension.T_cipherSuiteTLS13_static_extension._extract(_c, _newSecret, _currentSecret)) i];
    }
    static public function _deriveSecret(_c:T_cipherSuiteTLS13, _secret:Array<std.UInt>, _label:String, _transcript:stdgo._internal.hash.Hash_Hash.Hash):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _secret = ([for (i in _secret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = (_label : stdgo.GoString);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13_static_extension.T_cipherSuiteTLS13_static_extension._deriveSecret(_c, _secret, _label, _transcript)) i];
    }
    static public function _expandLabel(_c:T_cipherSuiteTLS13, _secret:Array<std.UInt>, _label:String, _context:Array<std.UInt>, _length:StdTypes.Int):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        final _secret = ([for (i in _secret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _label = (_label : stdgo.GoString);
        final _context = ([for (i in _context) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _length = (_length : stdgo.GoInt);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13_static_extension.T_cipherSuiteTLS13_static_extension._expandLabel(_c, _secret, _label, _context, _length)) i];
    }
}
