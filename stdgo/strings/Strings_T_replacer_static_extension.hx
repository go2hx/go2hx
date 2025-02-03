package stdgo.strings;
class T_replacer_static_extension {
    static public function writeString(t:stdgo._internal.strings.Strings_T_replacer.T_replacer, _w:stdgo._internal.io.Io_Writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_T_replacer_static_extension.T_replacer_static_extension.writeString(t, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(t:stdgo._internal.strings.Strings_T_replacer.T_replacer, _s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_T_replacer_static_extension.T_replacer_static_extension.replace(t, _s);
    }
}
