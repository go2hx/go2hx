package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_m_static_extension.T_m_static_extension) class T_m {
    @:embedded
    public var _dlogPerM : stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM = ({} : stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM);
    @:embedded
    public var _mOS : stdgo._internal.runtime.Runtime_t_mos.T_mOS = ({} : stdgo._internal.runtime.Runtime_t_mos.T_mOS);
    public function new(?_dlogPerM:stdgo._internal.runtime.Runtime_t_dlogperm.T_dlogPerM, ?_mOS:stdgo._internal.runtime.Runtime_t_mos.T_mOS) {
        if (_dlogPerM != null) this._dlogPerM = _dlogPerM;
        if (_mOS != null) this._mOS = _mOS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_m(_dlogPerM, _mOS);
    }
}
