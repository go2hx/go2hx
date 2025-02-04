package stdgo._internal.strings;
@:keep class T_replacer_static_extension {
    @:interfacetypeffun
    static public function writeString(t:stdgo._internal.strings.Strings_t_replacer.T_replacer, _w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.writeString(_w, _s);
    @:interfacetypeffun
    static public function replace(t:stdgo._internal.strings.Strings_t_replacer.T_replacer, _s:stdgo.GoString):stdgo.GoString return t.replace(_s);
}
