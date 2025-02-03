package stdgo.fmt;
class T_stringReader_static_extension {
    static public function read(_r:stdgo.Pointer<T_stringReader>, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_stringReader_static_extension.T_stringReader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
