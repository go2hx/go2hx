package stdgo._internal.os.signal;
@:structInit class T_stopping {
    public var _c : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal> = (null : stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>);
    public var _h : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler> = (null : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>);
    public function new(?_c:stdgo.Chan<stdgo._internal.os.Os_Signal.Signal>, ?_h:stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>) {
        if (_c != null) this._c = _c;
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stopping(_c, _h);
    }
}
