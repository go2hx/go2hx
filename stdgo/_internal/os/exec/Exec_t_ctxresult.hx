package stdgo._internal.os.exec;
@:structInit @:using(stdgo._internal.os.exec.Exec_t_ctxresult_static_extension.T_ctxResult_static_extension) class T_ctxResult {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public function new(?_err:stdgo.Error, ?_timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>) {
        if (_err != null) this._err = _err;
        if (_timer != null) this._timer = _timer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ctxResult(_err, _timer);
    }
}
