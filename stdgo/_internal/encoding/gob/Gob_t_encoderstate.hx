package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_encoderstate_static_extension.T_encoderState_static_extension) class T_encoderState {
    public var _enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
    public var _b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
    public var _sendZero : Bool = false;
    public var _fieldnum : stdgo.GoInt = 0;
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(9, 9).__setNumber32__();
    public var _next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
    public function new(?_enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, ?_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, ?_sendZero:Bool, ?_fieldnum:stdgo.GoInt, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_next:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>) {
        if (_enc != null) this._enc = _enc;
        if (_b != null) this._b = _b;
        if (_sendZero != null) this._sendZero = _sendZero;
        if (_fieldnum != null) this._fieldnum = _fieldnum;
        if (_buf != null) this._buf = _buf;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoderState(_enc, _b, _sendZero, _fieldnum, _buf, _next);
    }
}
