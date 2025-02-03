package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_quicState_static_extension) abstract T_quicState(stdgo._internal.crypto.tls.Tls_T_quicState.T_quicState) from stdgo._internal.crypto.tls.Tls_T_quicState.T_quicState to stdgo._internal.crypto.tls.Tls_T_quicState.T_quicState {
    public var _events(get, set) : Array<QUICEvent>;
    function get__events():Array<QUICEvent> return [for (i in this._events) i];
    function set__events(v:Array<QUICEvent>):Array<QUICEvent> {
        this._events = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
        return v;
    }
    public var _nextEvent(get, set) : StdTypes.Int;
    function get__nextEvent():StdTypes.Int return this._nextEvent;
    function set__nextEvent(v:StdTypes.Int):StdTypes.Int {
        this._nextEvent = (v : stdgo.GoInt);
        return v;
    }
    public var _eventArr(get, set) : haxe.ds.Vector<QUICEvent>;
    function get__eventArr():haxe.ds.Vector<QUICEvent> return haxe.ds.Vector.fromArrayCopy([for (i in this._eventArr) i]);
    function set__eventArr(v:haxe.ds.Vector<QUICEvent>):haxe.ds.Vector<QUICEvent> {
        this._eventArr = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
        return v;
    }
    public var _started(get, set) : Bool;
    function get__started():Bool return this._started;
    function set__started(v:Bool):Bool {
        this._started = v;
        return v;
    }
    public var _signalc(get, set) : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>;
    function get__signalc():stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> return this._signalc;
    function set__signalc(v:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>):stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> {
        this._signalc = (v : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
        return v;
    }
    public var _blockedc(get, set) : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>;
    function get__blockedc():stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> return this._blockedc;
    function set__blockedc(v:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>):stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> {
        this._blockedc = (v : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
        return v;
    }
    public var _cancelc(get, set) : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>;
    function get__cancelc():stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> return this._cancelc;
    function set__cancelc(v:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>):stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> {
        this._cancelc = (v : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
        return v;
    }
    public var _cancel(get, set) : stdgo._internal.context.Context_CancelFunc.CancelFunc;
    function get__cancel():stdgo._internal.context.Context_CancelFunc.CancelFunc return this._cancel;
    function set__cancel(v:stdgo._internal.context.Context_CancelFunc.CancelFunc):stdgo._internal.context.Context_CancelFunc.CancelFunc {
        this._cancel = v;
        return v;
    }
    public var _readbuf(get, set) : Array<std.UInt>;
    function get__readbuf():Array<std.UInt> return [for (i in this._readbuf) i];
    function set__readbuf(v:Array<std.UInt>):Array<std.UInt> {
        this._readbuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _transportParams(get, set) : Array<std.UInt>;
    function get__transportParams():Array<std.UInt> return [for (i in this._transportParams) i];
    function set__transportParams(v:Array<std.UInt>):Array<std.UInt> {
        this._transportParams = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_events:Array<QUICEvent>, ?_nextEvent:StdTypes.Int, ?_eventArr:haxe.ds.Vector<QUICEvent>, ?_started:Bool, ?_signalc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_blockedc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_cancelc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_readbuf:Array<std.UInt>, ?_transportParams:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_quicState.T_quicState(([for (i in _events) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>), (_nextEvent : stdgo.GoInt), ([for (i in _eventArr) i] : stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>), _started, (_signalc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>), (_blockedc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>), (_cancelc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>), _cancel, ([for (i in _readbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _transportParams) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
