package stdgo.encoding.hex;
class T_encoder_static_extension {
    static public function write(_e:T_encoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T_encoder_static_extension.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
