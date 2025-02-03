package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.Field_static_extension) abstract Field(stdgo._internal.debug.dwarf.Dwarf_Field.Field) from stdgo._internal.debug.dwarf.Dwarf_Field.Field to stdgo._internal.debug.dwarf.Dwarf_Field.Field {
    public var attr(get, set) : Attr;
    function get_attr():Attr return this.attr;
    function set_attr(v:Attr):Attr {
        this.attr = v;
        return v;
    }
    public var val(get, set) : stdgo.AnyInterface;
    function get_val():stdgo.AnyInterface return this.val;
    function set_val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.val = (v : stdgo.AnyInterface);
        return v;
    }
    public var class_(get, set) : Class_;
    function get_class_():Class_ return this.class_;
    function set_class_(v:Class_):Class_ {
        this.class_ = v;
        return v;
    }
    public function new(?attr:Attr, ?val:stdgo.AnyInterface, ?class_:Class_) this = new stdgo._internal.debug.dwarf.Dwarf_Field.Field(attr, (val : stdgo.AnyInterface), class_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
