package stdgo._internal.debug.dwarf;
@:keep class T_typeReader_static_extension {
    static public function addressSize(t:T_typeReader):stdgo.GoInt return t.addressSize();
    static public function _offset(t:T_typeReader):stdgo._internal.debug.dwarf.Dwarf_Offset.Offset return t._offset();
    static public function _clone(t:T_typeReader):stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader return t._clone();
    static public function next(t:T_typeReader):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.Error; } return t.next();
    static public function seek(t:T_typeReader, _0:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):Void t.seek(_0);
}
