package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.T_common_static_extension) abstract T_common(stdgo._internal.reflect.Reflect_T_common.T_common) from stdgo._internal.reflect.Reflect_T_common.T_common to stdgo._internal.reflect.Reflect_T_common.T_common {
    public var type(get, set) : stdgo._internal.internal.abi.Abi_Type_.Type_;
    function get_type():stdgo._internal.internal.abi.Abi_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.internal.abi.Abi_Type_.Type_):stdgo._internal.internal.abi.Abi_Type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.internal.abi.Abi_Type_.Type_) this = new stdgo._internal.reflect.Reflect_T_common.T_common(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
