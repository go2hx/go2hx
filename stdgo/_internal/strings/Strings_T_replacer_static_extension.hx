package stdgo._internal.strings;
@:keep class T_replacer_static_extension {
    static public function writeString(t:T_replacer, _w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.writeString(_w, _s);
    static public function replace(t:T_replacer, _s:stdgo.GoString):stdgo.GoString return t.replace(_s);
}