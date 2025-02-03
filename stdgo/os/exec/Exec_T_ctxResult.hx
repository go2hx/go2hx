package stdgo.os.exec;
@:structInit @:using(stdgo.os.exec.Exec.T_ctxResult_static_extension) abstract T_ctxResult(stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult) from stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult to stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _timer(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__timer():stdgo._internal.time.Time_Timer.Timer return this._timer;
    function set__timer(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._timer = (v : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_timer:stdgo._internal.time.Time_Timer.Timer) this = new stdgo._internal.os.exec.Exec_T_ctxResult.T_ctxResult((_err : stdgo.Error), (_timer : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
