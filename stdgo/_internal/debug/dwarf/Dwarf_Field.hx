package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_Field_static_extension.Field_static_extension) class Field {
    public var attr : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr);
    public var val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var class_ : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_ = ((0 : stdgo.GoInt) : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_);
    public function new(?attr:stdgo._internal.debug.dwarf.Dwarf_Attr.Attr, ?val:stdgo.AnyInterface, ?class_:stdgo._internal.debug.dwarf.Dwarf_Class_.Class_) {
        if (attr != null) this.attr = attr;
        if (val != null) this.val = val;
        if (class_ != null) this.class_ = class_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Field(attr, val, class_);
    }
}
