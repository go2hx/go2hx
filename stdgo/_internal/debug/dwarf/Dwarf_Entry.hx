package stdgo._internal.debug.dwarf;
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
