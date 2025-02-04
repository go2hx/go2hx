package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_entry_static_extension.Entry_static_extension) class Entry {
    public var offset : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var tag : stdgo._internal.debug.dwarf.Dwarf_tag.Tag = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
    public var children : Bool = false;
    public var field : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_field.Field> = (null : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_field.Field>);
    public function new(?offset:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?tag:stdgo._internal.debug.dwarf.Dwarf_tag.Tag, ?children:Bool, ?field:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_field.Field>) {
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
