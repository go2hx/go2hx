package stdgo._internal.encoding.gob;
class Encoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function encodeValue(_value:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error return @:_0 __self__.value.encodeValue(_value);
    @:keep
    @:tdfield
    public dynamic function _sendTypeId(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):Void @:_0 __self__.value._sendTypeId(_state, _ut);
    @:keep
    @:tdfield
    public dynamic function _sendTypeDescriptor(_w:stdgo._internal.io.Io_writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):Void @:_0 __self__.value._sendTypeDescriptor(_w, _state, _ut);
    @:keep
    @:tdfield
    public dynamic function encode(_e:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.encode(_e);
    @:keep
    @:tdfield
    public dynamic function _sendType(_w:stdgo._internal.io.Io_writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _origt:stdgo._internal.reflect.Reflect_type_.Type_):Bool return @:_0 __self__.value._sendType(_w, _state, _origt);
    @:keep
    @:tdfield
    public dynamic function _sendActualType(_w:stdgo._internal.io.Io_writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _actual:stdgo._internal.reflect.Reflect_type_.Type_):Bool return @:_0 __self__.value._sendActualType(_w, _state, _ut, _actual);
    @:keep
    @:tdfield
    public dynamic function _writeMessage(_w:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>):Void @:_0 __self__.value._writeMessage(_w, _b);
    @:keep
    @:tdfield
    public dynamic function _setError(_err:stdgo.Error):Void @:_0 __self__.value._setError(_err);
    @:keep
    @:tdfield
    public dynamic function _popWriter():Void @:_0 __self__.value._popWriter();
    @:keep
    @:tdfield
    public dynamic function _pushWriter(_w:stdgo._internal.io.Io_writer.Writer):Void @:_0 __self__.value._pushWriter(_w);
    @:keep
    @:tdfield
    public dynamic function _writer():stdgo._internal.io.Io_writer.Writer return @:_0 __self__.value._writer();
    @:keep
    @:tdfield
    public dynamic function _encode(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_value.Value, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):Void @:_0 __self__.value._encode(_b, _value, _ut);
    @:keep
    @:tdfield
    public dynamic function _encodeGobEncoder(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _v:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._encodeGobEncoder(_b, _ut, _v);
    @:keep
    @:tdfield
    public dynamic function _encodeInterface(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _iv:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._encodeInterface(_b, _iv);
    @:keep
    @:tdfield
    public dynamic function _encodeMap(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _mv:stdgo._internal.reflect.Reflect_value.Value, _keyOp:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _elemOp:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _keyIndir:stdgo.GoInt, _elemIndir:stdgo.GoInt):Void @:_0 __self__.value._encodeMap(_b, _mv, _keyOp, _elemOp, _keyIndir, _elemIndir);
    @:keep
    @:tdfield
    public dynamic function _encodeArray(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_value.Value, _op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _elemIndir:stdgo.GoInt, _length:stdgo.GoInt, _helper:stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper):Void @:_0 __self__.value._encodeArray(_b, _value, _op, _elemIndir, _length, _helper);
    @:keep
    @:tdfield
    public dynamic function _encodeStruct(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._encodeStruct(_b, _engine, _value);
    @:keep
    @:tdfield
    public dynamic function _encodeSingle(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._encodeSingle(_b, _engine, _value);
    @:keep
    @:tdfield
    public dynamic function _freeEncoderState(_e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>):Void @:_0 __self__.value._freeEncoderState(_e);
    @:keep
    @:tdfield
    public dynamic function _newEncoderState(_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> return @:_0 __self__.value._newEncoderState(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_encoderpointer.EncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
