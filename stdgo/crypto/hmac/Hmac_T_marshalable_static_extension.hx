package stdgo.crypto.hmac;
class T_marshalable_static_extension {
    static public function unmarshalBinary(t:stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.hmac.Hmac_T_marshalable_static_extension.T_marshalable_static_extension.unmarshalBinary(t, _0);
    }
    static public function marshalBinary(t:stdgo._internal.crypto.hmac.Hmac_T_marshalable.T_marshalable):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.hmac.Hmac_T_marshalable_static_extension.T_marshalable_static_extension.marshalBinary(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
