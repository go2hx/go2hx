package stdgo._internal.encoding.json;
class T_decodeState_asInterface {
    @:keep
    public dynamic function _literalInterface():stdgo.AnyInterface return __self__.value._literalInterface();
    @:keep
    public dynamic function _objectInterface():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return __self__.value._objectInterface();
    @:keep
    public dynamic function _arrayInterface():stdgo.Slice<stdgo.AnyInterface> return __self__.value._arrayInterface();
    @:keep
    public dynamic function _valueInterface():stdgo.AnyInterface return __self__.value._valueInterface();
    @:keep
    public dynamic function _literalStore(_item:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo._internal.reflect.Reflect_Value.Value, _fromQuoted:Bool):stdgo.Error return __self__.value._literalStore(_item, _v, _fromQuoted);
    @:keep
    public dynamic function _convertNumber(_s:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } return __self__.value._convertNumber(_s);
    @:keep
    public dynamic function _object(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return __self__.value._object(_v);
    @:keep
    public dynamic function _array(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return __self__.value._array(_v);
    @:keep
    public dynamic function _valueQuoted():stdgo.AnyInterface return __self__.value._valueQuoted();
    @:keep
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return __self__.value._value(_v);
    @:keep
    public dynamic function _rescanLiteral():Void __self__.value._rescanLiteral();
    @:keep
    public dynamic function _scanWhile(_op:stdgo.GoInt):Void __self__.value._scanWhile(_op);
    @:keep
    public dynamic function _scanNext():Void __self__.value._scanNext();
    @:keep
    public dynamic function _skip():Void __self__.value._skip();
    @:keep
    public dynamic function _addErrorContext(_err:stdgo.Error):stdgo.Error return __self__.value._addErrorContext(_err);
    @:keep
    public dynamic function _saveError(_err:stdgo.Error):Void __self__.value._saveError(_err);
    @:keep
    public dynamic function _init(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> return __self__.value._init(_data);
    @:keep
    public dynamic function _readIndex():stdgo.GoInt return __self__.value._readIndex();
    @:keep
    public dynamic function _unmarshal(_v:stdgo.AnyInterface):stdgo.Error return __self__.value._unmarshal(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
