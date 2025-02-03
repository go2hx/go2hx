package stdgo.crypto.elliptic;
class T_unmarshaler_static_extension {
    static public function unmarshalCompressed(t:stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler_static_extension.T_unmarshaler_static_extension.unmarshalCompressed(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshal(t:stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler.T_unmarshaler, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_unmarshaler_static_extension.T_unmarshaler_static_extension.unmarshal(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
