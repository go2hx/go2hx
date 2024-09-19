package stdgo._internal.debug.dwarf;
@:keep class Type__static_extension {
    static public function size(t:Type_):stdgo.GoInt64 return t.size();
    static public function string(t:Type_):stdgo.GoString return t.string();
    static public function common(t:Type_):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return t.common();
}
