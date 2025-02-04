package stdgo._internal.encoding.xml;
class T_printer_asInterface {
    @:keep
    @:tdfield
    public dynamic function escapeString(_s:stdgo.GoString):Void @:_0 __self__.value.escapeString(_s);
    @:keep
    @:tdfield
    public dynamic function _writeIndent(_depthDelta:stdgo.GoInt):Void @:_0 __self__.value._writeIndent(_depthDelta);
    @:keep
    @:tdfield
    public dynamic function _cachedWriteError():stdgo.Error return @:_0 __self__.value._cachedWriteError();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function writeByte(_c:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value.writeByte(_c);
    @:keep
    @:tdfield
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_s);
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function _marshalStruct(_tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _val:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error return @:_0 __self__.value._marshalStruct(_tinfo, _val);
    @:keep
    @:tdfield
    public dynamic function _marshalSimple(_typ:stdgo._internal.reflect.Reflect_type_.Type_, _val:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._marshalSimple(_typ, _val);
    @:keep
    @:tdfield
    public dynamic function _writeEnd(_name:stdgo._internal.encoding.xml.Xml_name.Name):stdgo.Error return @:_0 __self__.value._writeEnd(_name);
    @:keep
    @:tdfield
    public dynamic function _writeStart(_start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error return @:_0 __self__.value._writeStart(_start);
    @:keep
    @:tdfield
    public dynamic function _marshalTextInterface(_val:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error return @:_0 __self__.value._marshalTextInterface(_val, _start);
    @:keep
    @:tdfield
    public dynamic function _marshalInterface(_val:stdgo._internal.encoding.xml.Xml_marshaler.Marshaler, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error return @:_0 __self__.value._marshalInterface(_val, _start);
    @:keep
    @:tdfield
    public dynamic function _marshalAttr(_start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _name:stdgo._internal.encoding.xml.Xml_name.Name, _val:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error return @:_0 __self__.value._marshalAttr(_start, _name, _val);
    @:keep
    @:tdfield
    public dynamic function _marshalValue(_val:stdgo._internal.reflect.Reflect_value.Value, _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>, _startTemplate:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error return @:_0 __self__.value._marshalValue(_val, _finfo, _startTemplate);
    @:keep
    @:tdfield
    public dynamic function _popPrefix():Void @:_0 __self__.value._popPrefix();
    @:keep
    @:tdfield
    public dynamic function _markPrefix():Void @:_0 __self__.value._markPrefix();
    @:keep
    @:tdfield
    public dynamic function _deleteAttrPrefix(_prefix:stdgo.GoString):Void @:_0 __self__.value._deleteAttrPrefix(_prefix);
    @:keep
    @:tdfield
    public dynamic function _createAttrPrefix(_url:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._createAttrPrefix(_url);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.xml.Xml_t_printerpointer.T_printerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
