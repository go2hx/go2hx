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
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_Entry_static_extension.Entry_static_extension) class Entry {
    public var offset : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset);
    public var tag : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag);
    public var children : Bool = false;
    public var field : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Field.Field> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Field.Field>);
    public function new(?offset:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, ?tag:stdgo._internal.debug.dwarf.Dwarf_Tag.Tag, ?children:Bool, ?field:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Field.Field>) {
        if (offset != null) this.offset = offset;
        if (tag != null) this.tag = tag;
        if (children != null) this.children = children;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Entry(offset, tag, children, field);
    }
}
