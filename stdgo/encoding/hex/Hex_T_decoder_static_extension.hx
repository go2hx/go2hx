package stdgo.encoding.hex;
class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T_decoder_static_extension.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
