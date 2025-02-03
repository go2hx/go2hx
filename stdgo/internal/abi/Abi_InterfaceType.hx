package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.InterfaceType_static_extension) abstract InterfaceType(stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType) from stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType to stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var pkgPath(get, set) : Name;
    function get_pkgPath():Name return this.pkgPath;
    function set_pkgPath(v:Name):Name {
        this.pkgPath = v;
        return v;
    }
    public var methods(get, set) : Array<Imethod>;
    function get_methods():Array<Imethod> return [for (i in this.methods) i];
    function set_methods(v:Array<Imethod>):Array<Imethod> {
        this.methods = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_Imethod.Imethod>);
        return v;
    }
    public function new(?type:Type_, ?pkgPath:Name, ?methods:Array<Imethod>) this = new stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType(type, pkgPath, ([for (i in methods) i] : stdgo.Slice<stdgo._internal.internal.abi.Abi_Imethod.Imethod>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
