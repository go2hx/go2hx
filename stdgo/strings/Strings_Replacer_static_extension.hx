package stdgo.strings;
class Replacer_static_extension {
    static public function writeString(_r:Replacer, _w:stdgo._internal.io.Io_Writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_Replacer_static_extension.Replacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:Replacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_Replacer_static_extension.Replacer_static_extension.replace(_r, _s);
    }
    static public function _build(_b:Replacer):T_replacer {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
        return stdgo._internal.strings.Strings_Replacer_static_extension.Replacer_static_extension._build(_b);
    }
    static public function _buildOnce(_r:Replacer):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
        stdgo._internal.strings.Strings_Replacer_static_extension.Replacer_static_extension._buildOnce(_r);
    }
    static public function printTrie(_r:Replacer):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
        return stdgo._internal.strings.Strings_Replacer_static_extension.Replacer_static_extension.printTrie(_r);
    }
    static public function replacer(_r:Replacer):stdgo.AnyInterface {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Replacer.Replacer>);
        return stdgo._internal.strings.Strings_Replacer_static_extension.Replacer_static_extension.replacer(_r);
    }
}
