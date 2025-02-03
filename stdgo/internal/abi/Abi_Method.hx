package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.Method_static_extension) abstract Method(stdgo._internal.internal.abi.Abi_Method.Method) from stdgo._internal.internal.abi.Abi_Method.Method to stdgo._internal.internal.abi.Abi_Method.Method {
    public var name(get, set) : NameOff;
    function get_name():NameOff return this.name;
    function set_name(v:NameOff):NameOff {
        this.name = v;
        return v;
    }
    public var mtyp(get, set) : TypeOff;
    function get_mtyp():TypeOff return this.mtyp;
    function set_mtyp(v:TypeOff):TypeOff {
        this.mtyp = v;
        return v;
    }
    public var ifn(get, set) : TextOff;
    function get_ifn():TextOff return this.ifn;
    function set_ifn(v:TextOff):TextOff {
        this.ifn = v;
        return v;
    }
    public var tfn(get, set) : TextOff;
    function get_tfn():TextOff return this.tfn;
    function set_tfn(v:TextOff):TextOff {
        this.tfn = v;
        return v;
    }
    public function new(?name:NameOff, ?mtyp:TypeOff, ?ifn:TextOff, ?tfn:TextOff) this = new stdgo._internal.internal.abi.Abi_Method.Method(name, mtyp, ifn, tfn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
