package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.StructField_asInterface) class StructField_static_extension {
    @:keep
    @:tdfield
    static public function _bitOffset( _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField>):stdgo.GoInt64 {
        @:recv var _f:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_structfield.StructField> = _f;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L247"
        if ((@:checkr _f ?? throw "null pointer dereference").bitOffset != ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L248"
            return (@:checkr _f ?? throw "null pointer dereference").bitOffset;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/type.go#L250"
        return (@:checkr _f ?? throw "null pointer dereference").dataBitOffset;
    }
}
