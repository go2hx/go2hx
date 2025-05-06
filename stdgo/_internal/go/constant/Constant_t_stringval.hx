package stdgo._internal.go.constant;
@:structInit @:using(stdgo._internal.go.constant.Constant_t_stringval_static_extension.T_stringVal_static_extension) class T_stringVal {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _s : stdgo.GoString = "";
    public var _l : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
    public var _r : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_s:stdgo.GoString, ?_l:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>, ?_r:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) {
        if (_mu != null) this._mu = _mu;
        if (_s != null) this._s = _s;
        if (_l != null) this._l = _l;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringVal(_mu, _s, _l, _r);
    }
}
