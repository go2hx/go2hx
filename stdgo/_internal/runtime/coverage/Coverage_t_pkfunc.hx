package stdgo._internal.runtime.coverage;
@:structInit @:using(stdgo._internal.runtime.coverage.Coverage_t_pkfunc_static_extension.T_pkfunc_static_extension) class T_pkfunc {
    public var _pk : stdgo.GoUInt32 = 0;
    public var _fcn : stdgo.GoUInt32 = 0;
    public function new(?_pk:stdgo.GoUInt32, ?_fcn:stdgo.GoUInt32) {
        if (_pk != null) this._pk = _pk;
        if (_fcn != null) this._fcn = _fcn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkfunc(_pk, _fcn);
    }
}
