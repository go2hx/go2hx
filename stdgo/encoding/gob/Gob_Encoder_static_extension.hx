package stdgo.encoding.gob;
class Encoder_static_extension {
    static public function encodeValue(_enc:Encoder, _value:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        return stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension.encodeValue(_enc, _value);
    }
    static public function _sendTypeId(_enc:Encoder, _state:T_encoderState, _ut:T_userTypeInfo):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._sendTypeId(_enc, _state, _ut);
    }
    static public function _sendTypeDescriptor(_enc:Encoder, _w:stdgo._internal.io.Io_Writer.Writer, _state:T_encoderState, _ut:T_userTypeInfo):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._sendTypeDescriptor(_enc, _w, _state, _ut);
    }
    static public function encode(_enc:Encoder, _e:stdgo.AnyInterface):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _e = (_e : stdgo.AnyInterface);
        return stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension.encode(_enc, _e);
    }
    static public function _sendType(_enc:Encoder, _w:stdgo._internal.io.Io_Writer.Writer, _state:T_encoderState, _origt:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        return stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._sendType(_enc, _w, _state, _origt);
    }
    static public function _sendActualType(_enc:Encoder, _w:stdgo._internal.io.Io_Writer.Writer, _state:T_encoderState, _ut:T_userTypeInfo, _actual:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        return stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._sendActualType(_enc, _w, _state, _ut, _actual);
    }
    static public function _writeMessage(_enc:Encoder, _w:stdgo._internal.io.Io_Writer.Writer, _b:T_encBuffer):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._writeMessage(_enc, _w, _b);
    }
    static public function _setError(_enc:Encoder, _err:stdgo.Error):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._setError(_enc, _err);
    }
    static public function _popWriter(_enc:Encoder):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._popWriter(_enc);
    }
    static public function _pushWriter(_enc:Encoder, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._pushWriter(_enc, _w);
    }
    static public function _writer(_enc:Encoder):stdgo._internal.io.Io_Writer.Writer {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        return stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._writer(_enc);
    }
    static public function _encode(_enc:Encoder, _b:T_encBuffer, _value:stdgo._internal.reflect.Reflect_Value.Value, _ut:T_userTypeInfo):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._encode(_enc, _b, _value, _ut);
    }
    static public function _encodeGobEncoder(_enc:Encoder, _b:T_encBuffer, _ut:T_userTypeInfo, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._encodeGobEncoder(_enc, _b, _ut, _v);
    }
    static public function _encodeInterface(_enc:Encoder, _b:T_encBuffer, _iv:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._encodeInterface(_enc, _b, _iv);
    }
    static public function _encodeMap(_enc:Encoder, _b:T_encBuffer, _mv:stdgo._internal.reflect.Reflect_Value.Value, _keyOp:T_encOp, _elemOp:T_encOp, _keyIndir:StdTypes.Int, _elemIndir:StdTypes.Int):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _keyIndir = (_keyIndir : stdgo.GoInt);
        final _elemIndir = (_elemIndir : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._encodeMap(_enc, _b, _mv, _keyOp, _elemOp, _keyIndir, _elemIndir);
    }
    static public function _encodeArray(_enc:Encoder, _b:T_encBuffer, _value:stdgo._internal.reflect.Reflect_Value.Value, _op:T_encOp, _elemIndir:StdTypes.Int, _length:StdTypes.Int, _helper:T_encHelper):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _elemIndir = (_elemIndir : stdgo.GoInt);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._encodeArray(_enc, _b, _value, _op, _elemIndir, _length, _helper);
    }
    static public function _encodeStruct(_enc:Encoder, _b:T_encBuffer, _engine:T_encEngine, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._encodeStruct(_enc, _b, _engine, _value);
    }
    static public function _encodeSingle(_enc:Encoder, _b:T_encBuffer, _engine:T_encEngine, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._encodeSingle(_enc, _b, _engine, _value);
    }
    static public function _freeEncoderState(_enc:Encoder, _e:T_encoderState):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
        stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._freeEncoderState(_enc, _e);
    }
    static public function _newEncoderState(_enc:Encoder, _b:T_encBuffer):T_encoderState {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        return stdgo._internal.encoding.gob.Gob_Encoder_static_extension.Encoder_static_extension._newEncoderState(_enc, _b);
    }
}
