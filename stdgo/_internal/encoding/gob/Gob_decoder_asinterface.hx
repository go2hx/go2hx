package stdgo._internal.encoding.gob;
class Decoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function decodeValue(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error return @:_0 __self__.value.decodeValue(_v);
    @:keep
    @:tdfield
    public dynamic function decode(_e:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.decode(_e);
    @:keep
    @:tdfield
    public dynamic function _decodeTypeSequence(_isInterface:Bool):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId return @:_0 __self__.value._decodeTypeSequence(_isInterface);
    @:keep
    @:tdfield
    public dynamic function _nextUint():stdgo.GoUInt64 return @:_0 __self__.value._nextUint();
    @:keep
    @:tdfield
    public dynamic function _nextInt():stdgo.GoInt64 return @:_0 __self__.value._nextInt();
    @:keep
    @:tdfield
    public dynamic function _readMessage(_nbytes:stdgo.GoInt):Void @:_0 __self__.value._readMessage(_nbytes);
    @:keep
    @:tdfield
    public dynamic function _recvMessage():Bool return @:_0 __self__.value._recvMessage();
    @:keep
    @:tdfield
    public dynamic function _recvType(_id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void @:_0 __self__.value._recvType(_id);
    @:keep
    @:tdfield
    public dynamic function _decodeIgnoredValue(_wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void @:_0 __self__.value._decodeIgnoredValue(_wireId);
    @:keep
    @:tdfield
    public dynamic function _decodeValue(_wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._decodeValue(_wireId, _value);
    @:keep
    @:tdfield
    public dynamic function _getIgnoreEnginePtr(_wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>; var _1 : stdgo.Error; } return @:_0 __self__.value._getIgnoreEnginePtr(_wireId);
    @:keep
    @:tdfield
    public dynamic function _getDecEnginePtr(_remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>; var _1 : stdgo.Error; } return @:_0 __self__.value._getDecEnginePtr(_remoteId, _ut);
    @:keep
    @:tdfield
    public dynamic function _compileDec(_remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>; var _1 : stdgo.Error; } return @:_0 __self__.value._compileDec(_remoteId, _ut);
    @:keep
    @:tdfield
    public dynamic function _compileIgnoreSingle(_remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine> return @:_0 __self__.value._compileIgnoreSingle(_remoteId);
    @:keep
    @:tdfield
    public dynamic function _compileSingle(_remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>; var _1 : stdgo.Error; } return @:_0 __self__.value._compileSingle(_remoteId, _ut);
    @:keep
    @:tdfield
    public dynamic function _typeString(_remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo.GoString return @:_0 __self__.value._typeString(_remoteId);
    @:keep
    @:tdfield
    public dynamic function _compatibleType(_fr:stdgo._internal.reflect.Reflect_type_.Type_, _fw:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>):Bool return @:_0 __self__.value._compatibleType(_fr, _fw, _inProgress);
    @:keep
    @:tdfield
    public dynamic function _gobDecodeOpFor(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> return @:_0 __self__.value._gobDecodeOpFor(_ut);
    @:keep
    @:tdfield
    public dynamic function _decIgnoreOpFor(_wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>, _depth:stdgo.GoInt):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> return @:_0 __self__.value._decIgnoreOpFor(_wireId, _inProgress, _depth);
    @:keep
    @:tdfield
    public dynamic function _decOpFor(_wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _rt:stdgo._internal.reflect.Reflect_type_.Type_, _name:stdgo.GoString, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> return @:_0 __self__.value._decOpFor(_wireId, _rt, _name, _inProgress);
    @:keep
    @:tdfield
    public dynamic function _ignoreGobDecoder(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):Void @:_0 __self__.value._ignoreGobDecoder(_state);
    @:keep
    @:tdfield
    public dynamic function _decodeGobDecoder(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._decodeGobDecoder(_ut, _state, _value);
    @:keep
    @:tdfield
    public dynamic function _ignoreInterface(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):Void @:_0 __self__.value._ignoreInterface(_state);
    @:keep
    @:tdfield
    public dynamic function _decodeInterface(_ityp:stdgo._internal.reflect.Reflect_type_.Type_, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._decodeInterface(_ityp, _state, _value);
    @:keep
    @:tdfield
    public dynamic function _ignoreSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp):Void @:_0 __self__.value._ignoreSlice(_state, _elemOp);
    @:keep
    @:tdfield
    public dynamic function _decodeSlice(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper):Void @:_0 __self__.value._decodeSlice(_state, _value, _elemOp, _ovfl, _helper);
    @:keep
    @:tdfield
    public dynamic function _ignoreMap(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _keyOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp):Void @:_0 __self__.value._ignoreMap(_state, _keyOp, _elemOp);
    @:keep
    @:tdfield
    public dynamic function _ignoreArray(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt):Void @:_0 __self__.value._ignoreArray(_state, _elemOp, _length);
    @:keep
    @:tdfield
    public dynamic function _ignoreArrayHelper(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt):Void @:_0 __self__.value._ignoreArrayHelper(_state, _elemOp, _length);
    @:keep
    @:tdfield
    public dynamic function _decodeMap(_mtyp:stdgo._internal.reflect.Reflect_type_.Type_, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _keyOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _ovfl:stdgo.Error):Void @:_0 __self__.value._decodeMap(_mtyp, _state, _value, _keyOp, _elemOp, _ovfl);
    @:keep
    @:tdfield
    public dynamic function _decodeArray(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper):Void @:_0 __self__.value._decodeArray(_state, _value, _elemOp, _length, _ovfl, _helper);
    @:keep
    @:tdfield
    public dynamic function _decodeArrayHelper(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper):Void @:_0 __self__.value._decodeArrayHelper(_state, _value, _elemOp, _length, _ovfl, _helper);
    @:keep
    @:tdfield
    public dynamic function _ignoreSingle(_engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>):Void @:_0 __self__.value._ignoreSingle(_engine);
    @:keep
    @:tdfield
    public dynamic function _ignoreStruct(_engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>):Void @:_0 __self__.value._ignoreStruct(_engine);
    @:keep
    @:tdfield
    public dynamic function _decodeStruct(_engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._decodeStruct(_engine, _value);
    @:keep
    @:tdfield
    public dynamic function _decodeSingle(_engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void @:_0 __self__.value._decodeSingle(_engine, _value);
    @:keep
    @:tdfield
    public dynamic function _freeDecoderState(_d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):Void @:_0 __self__.value._freeDecoderState(_d);
    @:keep
    @:tdfield
    public dynamic function _newDecoderState(_buf:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> return @:_0 __self__.value._newDecoderState(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_decoderpointer.DecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
