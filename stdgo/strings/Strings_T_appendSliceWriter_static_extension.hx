package stdgo.strings;
class T_appendSliceWriter_static_extension {
    static public function writeString(_w:T_appendSliceWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_T_appendSliceWriter_static_extension.T_appendSliceWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_appendSliceWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.strings.Strings_T_appendSliceWriter.T_appendSliceWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.strings.Strings_T_appendSliceWriter_static_extension.T_appendSliceWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
