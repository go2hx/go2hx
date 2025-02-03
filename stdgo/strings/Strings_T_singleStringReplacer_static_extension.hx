package stdgo.strings;
class T_singleStringReplacer_static_extension {
    static public function writeString(_r:T_singleStringReplacer, _w:stdgo._internal.io.Io_Writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_T_singleStringReplacer_static_extension.T_singleStringReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_singleStringReplacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_T_singleStringReplacer_static_extension.T_singleStringReplacer_static_extension.replace(_r, _s);
    }
}
