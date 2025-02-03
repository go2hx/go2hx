package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.Entry_static_extension) abstract Entry(stdgo._internal.debug.dwarf.Dwarf_Entry.Entry) from stdgo._internal.debug.dwarf.Dwarf_Entry.Entry to stdgo._internal.debug.dwarf.Dwarf_Entry.Entry {
    public var offset(get, set) : Offset;
    function get_offset():Offset return this.offset;
    function set_offset(v:Offset):Offset {
        this.offset = v;
        return v;
    }
    public var tag(get, set) : Tag;
    function get_tag():Tag return this.tag;
    function set_tag(v:Tag):Tag {
        this.tag = v;
        return v;
    }
    public var children(get, set) : Bool;
    function get_children():Bool return this.children;
    function set_children(v:Bool):Bool {
        this.children = v;
        return v;
    }
    public var field(get, set) : Array<Field>;
    function get_field():Array<Field> return [for (i in this.field) i];
    function set_field(v:Array<Field>):Array<Field> {
        this.field = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Field.Field>);
        return v;
    }
    public function new(?offset:Offset, ?tag:Tag, ?children:Bool, ?field:Array<Field>) this = new stdgo._internal.debug.dwarf.Dwarf_Entry.Entry(offset, tag, children, ([for (i in field) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_Field.Field>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
