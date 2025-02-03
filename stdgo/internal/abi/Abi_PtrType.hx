package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.PtrType_static_extension) abstract PtrType(stdgo._internal.internal.abi.Abi_PtrType.PtrType) from stdgo._internal.internal.abi.Abi_PtrType.PtrType to stdgo._internal.internal.abi.Abi_PtrType.PtrType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public function new(?type:Type_, ?elem:Type_) this = new stdgo._internal.internal.abi.Abi_PtrType.PtrType(type, (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
