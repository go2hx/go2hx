package stdgo.compress.flate;
class T_dictWriter_static_extension {
    static public function write(_w:T_dictWriter, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictWriter.T_dictWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_dictWriter_static_extension.T_dictWriter_static_extension.write(_w, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
