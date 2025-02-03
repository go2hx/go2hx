package stdgo.image;
class T_reader_static_extension {
    static public function peek(t:stdgo._internal.image.Image_T_reader.T_reader, _0:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.image.Image_T_reader_static_extension.T_reader_static_extension.peek(t, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
