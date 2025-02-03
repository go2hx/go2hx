package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_indenter_static_extension) abstract T_indenter(stdgo._internal.testing.Testing_T_indenter.T_indenter) from stdgo._internal.testing.Testing_T_indenter.T_indenter to stdgo._internal.testing.Testing_T_indenter.T_indenter {
    public var _c(get, set) : T_common;
    function get__c():T_common return this._c;
    function set__c(v:T_common):T_common {
        this._c = (v : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        return v;
    }
    public function new(?_c:T_common) this = new stdgo._internal.testing.Testing_T_indenter.T_indenter((_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
