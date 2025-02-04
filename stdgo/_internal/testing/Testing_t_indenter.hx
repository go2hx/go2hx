package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_indenter_static_extension.T_indenter_static_extension) class T_indenter {
    public var _c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
    public function new(?_c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>) {
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_indenter(_c);
    }
}
