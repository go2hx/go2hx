package stdgo.os.signal;
@:structInit @:using(stdgo.os.signal.Signal.T_stopping_static_extension) abstract T_stopping(stdgo._internal.os.signal.Signal_T_stopping.T_stopping) from stdgo._internal.os.signal.Signal_T_stopping.T_stopping to stdgo._internal.os.signal.Signal_T_stopping.T_stopping {
    public var _c(get, set) : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>;
    function get__c():stdgo.Chan<stdgo._internal.os.Os_Signal.Signal> return this._c;
    function set__c(v:stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>):stdgo.Chan<stdgo._internal.os.Os_Signal.Signal> {
        this._c = (v : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>);
        return v;
    }
    public var _h(get, set) : T_handler;
    function get__h():T_handler return this._h;
    function set__h(v:T_handler):T_handler {
        this._h = (v : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>);
        return v;
    }
    public function new(?_c:stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>, ?_h:T_handler) this = new stdgo._internal.os.signal.Signal_T_stopping.T_stopping((_c : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>), (_h : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
