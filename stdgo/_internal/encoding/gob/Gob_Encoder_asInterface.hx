package stdgo._internal.encoding.gob;
class Encoder_asInterface {
    @:keep
    public dynamic function encodeValue(_value:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return __self__.value.encodeValue(_value);
    @:keep
    public dynamic function _sendTypeId(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):Void __self__.value._sendTypeId(_state, _ut);
    @:keep
    public dynamic function _sendTypeDescriptor(_w:stdgo._internal.io.Io_Writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):Void __self__.value._sendTypeDescriptor(_w, _state, _ut);
    @:keep
    public dynamic function encode(_e:stdgo.AnyInterface):stdgo.Error return __self__.value.encode(_e);
    @:keep
    public dynamic function _sendType(_w:stdgo._internal.io.Io_Writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _origt:stdgo._internal.reflect.Reflect_Type_.Type_):Bool return __self__.value._sendType(_w, _state, _origt);
    @:keep
    public dynamic function _sendActualType(_w:stdgo._internal.io.Io_Writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _actual:stdgo._internal.reflect.Reflect_Type_.Type_):Bool return __self__.value._sendActualType(_w, _state, _ut, _actual);
    @:keep
    public dynamic function _writeMessage(_w:stdgo._internal.io.Io_Writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):Void __self__.value._writeMessage(_w, _b);
    @:keep
    public dynamic function _setError(_err:stdgo.Error):Void __self__.value._setError(_err);
    @:keep
    public dynamic function _popWriter():Void __self__.value._popWriter();
    @:keep
    public dynamic function _pushWriter(_w:stdgo._internal.io.Io_Writer.Writer):Void __self__.value._pushWriter(_w);
    @:keep
    public dynamic function _writer():stdgo._internal.io.Io_Writer.Writer return __self__.value._writer();
    @:keep
    public dynamic function _encode(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_Value.Value, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):Void __self__.value._encode(_b, _value, _ut);
    @:keep
    public dynamic function _encodeGobEncoder(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value._encodeGobEncoder(_b, _ut, _v);
    @:keep
    public dynamic function _encodeInterface(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _iv:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value._encodeInterface(_b, _iv);
    @:keep
    public dynamic function _encodeMap(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _mv:stdgo._internal.reflect.Reflect_Value.Value, _keyOp:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _elemOp:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _keyIndir:stdgo.GoInt, _elemIndir:stdgo.GoInt):Void __self__.value._encodeMap(_b, _mv, _keyOp, _elemOp, _keyIndir, _elemIndir);
    @:keep
    public dynamic function _encodeArray(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_Value.Value, _op:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _elemIndir:stdgo.GoInt, _length:stdgo.GoInt, _helper:stdgo._internal.encoding.gob.Gob_T_encHelper.T_encHelper):Void __self__.value._encodeArray(_b, _value, _op, _elemIndir, _length, _helper);
    @:keep
    public dynamic function _encodeStruct(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value._encodeStruct(_b, _engine, _value);
    @:keep
    public dynamic function _encodeSingle(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void __self__.value._encodeSingle(_b, _engine, _value);
    @:keep
    public dynamic function _freeEncoderState(_e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>):Void __self__.value._freeEncoderState(_e);
    @:keep
    public dynamic function _newEncoderState(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState> return __self__.value._newEncoderState(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
