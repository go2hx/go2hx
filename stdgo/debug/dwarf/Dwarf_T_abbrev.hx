package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_abbrev_static_extension) abstract T_abbrev(stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev) from stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev to stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev {
    public var _tag(get, set) : Tag;
    function get__tag():Tag return this._tag;
    function set__tag(v:Tag):Tag {
        this._tag = v;
        return v;
    }
    public var _children(get, set) : Bool;
    function get__children():Bool return this._children;
    function set__children(v:Bool):Bool {
        this._children = v;
        return v;
    }
    public var _field(get, set) : Array<T_afield>;
    function get__field():Array<T_afield> return [for (i in this._field) i];
    function set__field(v:Array<T_afield>):Array<T_afield> {
        this._field = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>);
        return v;
    }
    public function new(?_tag:Tag, ?_children:Bool, ?_field:Array<T_afield>) this = new stdgo._internal.debug.dwarf.Dwarf_T_abbrev.T_abbrev(_tag, _children, ([for (i in _field) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_afield.T_afield>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
