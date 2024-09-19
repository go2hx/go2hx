package stdgo._internal.encoding.xml;
class T_printer_asInterface {
    @:keep
    public dynamic function escapeString(_s:stdgo.GoString):Void __self__.value.escapeString(_s);
    @:keep
    public dynamic function _writeIndent(_depthDelta:stdgo.GoInt):Void __self__.value._writeIndent(_depthDelta);
    @:keep
    public dynamic function _cachedWriteError():stdgo.Error return __self__.value._cachedWriteError();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function writeByte(_c:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(_c);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function _marshalStruct(_tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return __self__.value._marshalStruct(_tinfo, _val);
    @:keep
    public dynamic function _marshalSimple(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _val:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return __self__.value._marshalSimple(_typ, _val);
    @:keep
    public dynamic function _writeEnd(_name:stdgo._internal.encoding.xml.Xml_Name.Name):stdgo.Error return __self__.value._writeEnd(_name);
    @:keep
    public dynamic function _writeStart(_start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error return __self__.value._writeStart(_start);
    @:keep
    public dynamic function _marshalTextInterface(_val:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error return __self__.value._marshalTextInterface(_val, _start);
    @:keep
    public dynamic function _marshalInterface(_val:stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error return __self__.value._marshalInterface(_val, _start);
    @:keep
    public dynamic function _marshalAttr(_start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _name:stdgo._internal.encoding.xml.Xml_Name.Name, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error return __self__.value._marshalAttr(_start, _name, _val);
    @:keep
    public dynamic function _marshalValue(_val:stdgo._internal.reflect.Reflect_Value.Value, _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>, _startTemplate:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error return __self__.value._marshalValue(_val, _finfo, _startTemplate);
    @:keep
    public dynamic function _popPrefix():Void __self__.value._popPrefix();
    @:keep
    public dynamic function _markPrefix():Void __self__.value._markPrefix();
    @:keep
    public dynamic function _deleteAttrPrefix(_prefix:stdgo.GoString):Void __self__.value._deleteAttrPrefix(_prefix);
    @:keep
    public dynamic function _createAttrPrefix(_url:stdgo.GoString):stdgo.GoString return __self__.value._createAttrPrefix(_url);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
