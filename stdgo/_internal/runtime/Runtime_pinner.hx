package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_pinner_static_extension.Pinner_static_extension) class Pinner {
    @:embedded
    public var _pinner : stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinner.T_pinner> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinner.T_pinner>);
    public function new(?_pinner:stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinner.T_pinner>) {
        if (_pinner != null) this._pinner = _pinner;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _unpin(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unpin():() -> Void return @:check32 this._pinner._unpin;
    public function __copy__() {
        return new Pinner(_pinner);
    }
}
