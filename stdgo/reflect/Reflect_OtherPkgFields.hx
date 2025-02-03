package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.OtherPkgFields_static_extension) abstract OtherPkgFields(stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields) from stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields to stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields {
    public var otherExported(get, set) : StdTypes.Int;
    function get_otherExported():StdTypes.Int return this.otherExported;
    function set_otherExported(v:StdTypes.Int):StdTypes.Int {
        this.otherExported = (v : stdgo.GoInt);
        return v;
    }
    public function new(?otherExported:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_OtherPkgFields.OtherPkgFields((otherExported : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
