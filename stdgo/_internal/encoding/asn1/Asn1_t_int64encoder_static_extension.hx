package stdgo._internal.encoding.asn1;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_int64Encoder_asInterface) class T_int64Encoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder = _i;
        var _n = (_i.len() : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < _n : Bool)) {
                _dst[(_j : stdgo.GoInt)] = ((_i >> (((((_n - (1 : stdgo.GoInt) : stdgo.GoInt) - _j : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder) : stdgo.GoUInt8);
                _j++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function len( _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder):stdgo.GoInt {
        @:recv var _i:stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder = _i;
        var _n = (1 : stdgo.GoInt);
        while ((_i > (127i64 : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder) : Bool)) {
            _n++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder);
        };
        while ((_i < (-128i64 : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder) : Bool)) {
            _n++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder);
        };
        return _n;
    }
}
