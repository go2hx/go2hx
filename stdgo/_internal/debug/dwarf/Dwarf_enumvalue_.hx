package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_enumvalue__static_extension.EnumValue__static_extension) class EnumValue_ {
    public var name : stdgo.GoString = "";
    public var val : stdgo.GoInt64 = 0;
    public function new(?name:stdgo.GoString, ?val:stdgo.GoInt64) {
        if (name != null) this.name = name;
        if (val != null) this.val = val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EnumValue_(name, val);
    }
}
