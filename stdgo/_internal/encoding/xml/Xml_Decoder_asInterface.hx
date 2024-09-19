package stdgo._internal.encoding.xml;
class Decoder_asInterface {
    @:keep
    public dynamic function _readName():Bool return __self__.value._readName();
    @:keep
    public dynamic function _name():{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value._name();
    @:keep
    public dynamic function _nsname():{ var _0 : stdgo._internal.encoding.xml.Xml_Name.Name; var _1 : Bool; } return __self__.value._nsname();
    @:keep
    public dynamic function _text(_quote:stdgo.GoInt, _cdata:Bool):stdgo.Slice<stdgo.GoUInt8> return __self__.value._text(_quote, _cdata);
    @:keep
    public dynamic function _ungetc(_b:stdgo.GoUInt8):Void __self__.value._ungetc(_b);
    @:keep
    public dynamic function _mustgetc():{ var _0 : stdgo.GoUInt8; var _1 : Bool; } return __self__.value._mustgetc();
    @:keep
    public dynamic function _savedOffset():stdgo.GoInt return __self__.value._savedOffset();
    @:keep
    public dynamic function inputPos():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value.inputPos();
    @:keep
    public dynamic function inputOffset():stdgo.GoInt64 return __self__.value.inputOffset();
    @:keep
    public dynamic function _getc():{ var _0 : stdgo.GoUInt8; var _1 : Bool; } return __self__.value._getc();
    @:keep
    public dynamic function _space():Void __self__.value._space();
    @:keep
    public dynamic function _attrval():stdgo.Slice<stdgo.GoUInt8> return __self__.value._attrval();
    @:keep
    public dynamic function _rawToken():{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } return __self__.value._rawToken();
    @:keep
    public dynamic function rawToken():{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } return __self__.value.rawToken();
    @:keep
    public dynamic function _autoClose(_t:stdgo._internal.encoding.xml.Xml_Token.Token):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : Bool; } return __self__.value._autoClose(_t);
    @:keep
    public dynamic function _popElement(_t:stdgo.Ref<stdgo._internal.encoding.xml.Xml_EndElement.EndElement>):Bool return __self__.value._popElement(_t);
    @:keep
    public dynamic function _syntaxError(_msg:stdgo.GoString):stdgo.Error return __self__.value._syntaxError(_msg);
    @:keep
    public dynamic function _pushNs(_local:stdgo.GoString, _url:stdgo.GoString, _ok:Bool):Void __self__.value._pushNs(_local, _url, _ok);
    @:keep
    public dynamic function _pushElement(_name:stdgo._internal.encoding.xml.Xml_Name.Name):Void __self__.value._pushElement(_name);
    @:keep
    public dynamic function _popEOF():Bool return __self__.value._popEOF();
    @:keep
    public dynamic function _pushEOF():Void __self__.value._pushEOF();
    @:keep
    public dynamic function _pop():stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> return __self__.value._pop();
    @:keep
    public dynamic function _push(_kind:stdgo.GoInt):stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> return __self__.value._push(_kind);
    @:keep
    public dynamic function _switchToReader(_r:stdgo._internal.io.Io_Reader.Reader):Void __self__.value._switchToReader(_r);
    @:keep
    public dynamic function _translate(_n:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>, _isElementName:Bool):Void __self__.value._translate(_n, _isElementName);
    @:keep
    public dynamic function token():{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } return __self__.value.token();
    @:keep
    public dynamic function skip():stdgo.Error return __self__.value.skip();
    @:keep
    public dynamic function _unmarshalPath(_tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _sv:stdgo._internal.reflect.Reflect_Value.Value, _parents:stdgo.Slice<stdgo.GoString>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._unmarshalPath(_tinfo, _sv, _parents, _start, _depth);
    @:keep
    public dynamic function _unmarshal(_val:stdgo._internal.reflect.Reflect_Value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):stdgo.Error return __self__.value._unmarshal(_val, _start, _depth);
    @:keep
    public dynamic function _unmarshalAttr(_val:stdgo._internal.reflect.Reflect_Value.Value, _attr:stdgo._internal.encoding.xml.Xml_Attr.Attr):stdgo.Error return __self__.value._unmarshalAttr(_val, _attr);
    @:keep
    public dynamic function _unmarshalTextInterface(_val:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler):stdgo.Error return __self__.value._unmarshalTextInterface(_val);
    @:keep
    public dynamic function _unmarshalInterface(_val:stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error return __self__.value._unmarshalInterface(_val, _start);
    @:keep
    public dynamic function decodeElement(_v:stdgo.AnyInterface, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error return __self__.value.decodeElement(_v, _start);
    @:keep
    public dynamic function decode(_v:stdgo.AnyInterface):stdgo.Error return __self__.value.decode(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
