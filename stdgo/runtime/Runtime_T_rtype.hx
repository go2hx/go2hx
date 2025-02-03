package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_rtype_static_extension) abstract T_rtype(stdgo._internal.runtime.Runtime_T_rtype.T_rtype) from stdgo._internal.runtime.Runtime_T_rtype.T_rtype to stdgo._internal.runtime.Runtime_T_rtype.T_rtype {
    public var type(get, set) : stdgo._internal.internal.abi.Abi_Type_.Type_;
    function get_type():stdgo._internal.internal.abi.Abi_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi_Type_.Type_):stdgo._internal.internal.abi.Abi_Type_.Type_ {
        this.type = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi_Type_.Type_) this = new stdgo._internal.runtime.Runtime_T_rtype.T_rtype((type : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
