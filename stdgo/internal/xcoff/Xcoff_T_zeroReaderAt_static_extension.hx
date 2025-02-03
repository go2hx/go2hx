package stdgo.internal.xcoff;
class T_zeroReaderAt_static_extension {
    static public function readAt(_w:T_zeroReaderAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_T_zeroReaderAt_static_extension.T_zeroReaderAt_static_extension.readAt(_w, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
