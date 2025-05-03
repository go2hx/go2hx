package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Class__asInterface) class Class__static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.dwarf.Dwarf_class_.Class_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_class_.Class_ = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/entry.go#L376"
        return (("dwarf." : stdgo.GoString) + (_i.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.dwarf.Dwarf_class_.Class_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_class_.Class_ = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/class_string.go#L38"
        if (((_i < (0 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_) : Bool) || (_i >= ((20 : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_class_.Class_) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/class_string.go#L39"
            return ((("Class(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/class_string.go#L41"
        return (("ClassUnknownClassAddressClassBlockClassConstantClassExprLocClassFlagClassLinePtrClassLocListPtrClassMacPtrClassRangeListPtrClassReferenceClassReferenceSigClassStringClassReferenceAltClassStringAltClassAddrPtrClassLocListClassRngListClassRngListsPtrClassStrOffsetsPtr" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___class_index.__Class_index[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___class_index.__Class_index[((_i + (1 : stdgo._internal.debug.dwarf.Dwarf_class_.Class_) : stdgo._internal.debug.dwarf.Dwarf_class_.Class_) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
