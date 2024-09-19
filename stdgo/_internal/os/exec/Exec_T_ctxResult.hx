package stdgo._internal.os.exec;
@:structInit class T_ctxResult {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public function new(?_err:stdgo.Error, ?_timer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>) {
        if (_err != null) this._err = _err;
        if (_timer != null) this._timer = _timer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ctxResult(_err, _timer);
    }
}
