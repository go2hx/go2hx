package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Class__asInterface) class Class__static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.dwarf.Dwarf_Class_.Class_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_Class_.Class_ = _i;
        return (("dwarf." : stdgo.GoString) + (_i.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.dwarf.Dwarf_Class_.Class_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_Class_.Class_ = _i;
        if (((_i < (0 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_) : Bool) || (_i >= ((20 : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_) : Bool) : Bool)) {
            return ((("Class(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("ClassUnknownClassAddressClassBlockClassConstantClassExprLocClassFlagClassLinePtrClassLocListPtrClassMacPtrClassRangeListPtrClassReferenceClassReferenceSigClassStringClassReferenceAltClassStringAltClassAddrPtrClassLocListClassRngListClassRngListsPtrClassStrOffsetsPtr" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___Class_index.__Class_index[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___Class_index.__Class_index[((_i + (1 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_) : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
