package stdgo.encoding.hex;
class T__struct_1_static_extension {
    public static function read(__self__:stdgo._internal.encoding.hex.Hex_T__struct_1.T__struct_1, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex_T__struct_1_static_extension.T__struct_1_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
