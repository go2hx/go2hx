package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_encoderState_static_extension) abstract T_encoderState(stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState) from stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState to stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState {
    public var _enc(get, set) : Encoder;
    function get__enc():Encoder return this._enc;
    function set__enc(v:Encoder):Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        return v;
    }
    public var _b(get, set) : T_encBuffer;
    function get__b():T_encBuffer return this._b;
    function set__b(v:T_encBuffer):T_encBuffer {
        this._b = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        return v;
    }
    public var _sendZero(get, set) : Bool;
    function get__sendZero():Bool return this._sendZero;
    function set__sendZero(v:Bool):Bool {
        this._sendZero = v;
        return v;
    }
    public var _fieldnum(get, set) : StdTypes.Int;
    function get__fieldnum():StdTypes.Int return this._fieldnum;
    function set__fieldnum(v:StdTypes.Int):StdTypes.Int {
        this._fieldnum = (v : stdgo.GoInt);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _next(get, set) : T_encoderState;
    function get__next():T_encoderState return this._next;
    function set__next(v:T_encoderState):T_encoderState {
        this._next = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        return v;
    }
    public function new(?_enc:Encoder, ?_b:T_encBuffer, ?_sendZero:Bool, ?_fieldnum:StdTypes.Int, ?_buf:haxe.ds.Vector<std.UInt>, ?_next:T_encoderState) this = new stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState((_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>), (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>), _sendZero, (_fieldnum : stdgo.GoInt), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
