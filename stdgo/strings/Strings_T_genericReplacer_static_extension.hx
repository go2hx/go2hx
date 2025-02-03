package stdgo.strings;
class T_genericReplacer_static_extension {
    static public function writeString(_r:T_genericReplacer, _w:stdgo._internal.io.Io_Writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_T_genericReplacer_static_extension.T_genericReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_genericReplacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_T_genericReplacer_static_extension.T_genericReplacer_static_extension.replace(_r, _s);
    }
    static public function _lookup(_r:T_genericReplacer, _s:String, _ignoreRoot:Bool):stdgo.Tuple.Tuple3<String, StdTypes.Int, Bool> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_T_genericReplacer_static_extension.T_genericReplacer_static_extension._lookup(_r, _s, _ignoreRoot);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _printNode(_r:T_genericReplacer, _t:T_trieNode, _depth:StdTypes.Int):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>);
        final _t = (_t : stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>);
        final _depth = (_depth : stdgo.GoInt);
        return stdgo._internal.strings.Strings_T_genericReplacer_static_extension.T_genericReplacer_static_extension._printNode(_r, _t, _depth);
    }
}
