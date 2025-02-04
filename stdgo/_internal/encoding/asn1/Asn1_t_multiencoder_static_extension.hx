package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_multiEncoder_asInterface) class T_multiEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _m:stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _m:stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder = _m;
        var _off:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _e in _m) {
            _e.encode((_dst.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>));
            _off = (_off + (_e.len()) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function len( _m:stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder):stdgo.GoInt {
        @:recv var _m:stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder = _m;
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _e in _m) {
            _size = (_size + (_e.len()) : stdgo.GoInt);
        };
        return _size;
    }
}
