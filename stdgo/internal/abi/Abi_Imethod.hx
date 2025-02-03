package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.Imethod_static_extension) abstract Imethod(stdgo._internal.internal.abi.Abi_Imethod.Imethod) from stdgo._internal.internal.abi.Abi_Imethod.Imethod to stdgo._internal.internal.abi.Abi_Imethod.Imethod {
    public var name(get, set) : NameOff;
    function get_name():NameOff return this.name;
    function set_name(v:NameOff):NameOff {
        this.name = v;
        return v;
    }
    public var typ(get, set) : TypeOff;
    function get_typ():TypeOff return this.typ;
    function set_typ(v:TypeOff):TypeOff {
        this.typ = v;
        return v;
    }
    public function new(?name:NameOff, ?typ:TypeOff) this = new stdgo._internal.internal.abi.Abi_Imethod.Imethod(name, typ);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
