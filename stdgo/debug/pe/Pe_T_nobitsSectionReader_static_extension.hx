package stdgo.debug.pe;
class T_nobitsSectionReader_static_extension {
    static public function readAt(_:T_nobitsSectionReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.debug.pe.Pe_T_nobitsSectionReader.T_nobitsSectionReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.debug.pe.Pe_T_nobitsSectionReader_static_extension.T_nobitsSectionReader_static_extension.readAt(_, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
