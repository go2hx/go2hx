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
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_T_abbrev_static_extension.T_abbrev_static_extension) class T_abbrev {
    public var _tag : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag);
    public var _children : Bool = false;
    public var _field : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>);
    public function new(?_tag:stdgo._internal.debug.dwarf.Dwarf_Tag.Tag, ?_children:Bool, ?_field:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>) {
        if (_tag != null) this._tag = _tag;
        if (_children != null) this._children = _children;
        if (_field != null) this._field = _field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_abbrev(_tag, _children, _field);
    }
}
