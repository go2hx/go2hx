package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.ArrayType_static_extension) abstract ArrayType(stdgo._internal.internal.abi.Abi_ArrayType.ArrayType) from stdgo._internal.internal.abi.Abi_ArrayType.ArrayType to stdgo._internal.internal.abi.Abi_ArrayType.ArrayType {
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
    public var slice(get, set) : Type_;
    function get_slice():Type_ return this.slice;
    function set_slice(v:Type_):Type_ {
        this.slice = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public var len(get, set) : stdgo.GoUIntptr;
    function get_len():stdgo.GoUIntptr return this.len;
    function set_len(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.len = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?type:Type_, ?elem:Type_, ?slice:Type_, ?len:stdgo.GoUIntptr) this = new stdgo._internal.internal.abi.Abi_ArrayType.ArrayType(type, (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>), (slice : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>), (len : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
