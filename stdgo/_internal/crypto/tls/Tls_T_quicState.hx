package stdgo._internal.crypto.tls;
@:structInit class T_quicState {
    public var _events : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
    public var _nextEvent : stdgo.GoInt = 0;
    public var _eventArr : stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent> = new stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>(8, 8, ...[for (i in 0 ... 8) ({} : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)]);
    public var _started : Bool = false;
    public var _signalc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> = (null : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
    public var _blockedc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> = (null : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
    public var _cancelc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> = (null : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
    public var _cancel : stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
    public var _readbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _transportParams : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_events:stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>, ?_nextEvent:stdgo.GoInt, ?_eventArr:stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>, ?_started:Bool, ?_signalc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_blockedc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_cancelc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_readbuf:stdgo.Slice<stdgo.GoUInt8>, ?_transportParams:stdgo.Slice<stdgo.GoUInt8>) {
        if (_events != null) this._events = _events;
        if (_nextEvent != null) this._nextEvent = _nextEvent;
        if (_eventArr != null) this._eventArr = _eventArr;
        if (_started != null) this._started = _started;
        if (_signalc != null) this._signalc = _signalc;
        if (_blockedc != null) this._blockedc = _blockedc;
        if (_cancelc != null) this._cancelc = _cancelc;
        if (_cancel != null) this._cancel = _cancel;
        if (_readbuf != null) this._readbuf = _readbuf;
        if (_transportParams != null) this._transportParams = _transportParams;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_quicState(_events, _nextEvent, _eventArr, _started, _signalc, _blockedc, _cancelc, _cancel, _readbuf, _transportParams);
    }
}