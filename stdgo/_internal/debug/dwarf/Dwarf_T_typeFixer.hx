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
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_T_typeFixer_static_extension.T_typeFixer_static_extension) class T_typeFixer {
    public var _typedefs : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>>);
    public var _arraytypes : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>>);
    public function new(?_typedefs:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_TypedefType.TypedefType>>, ?_arraytypes:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>>) {
        if (_typedefs != null) this._typedefs = _typedefs;
        if (_arraytypes != null) this._arraytypes = _arraytypes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeFixer(_typedefs, _arraytypes);
    }
}
