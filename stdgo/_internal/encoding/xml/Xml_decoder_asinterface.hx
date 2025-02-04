package stdgo._internal.encoding.xml;
class Decoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _readName():Bool return @:_0 __self__.value._readName();
    @:keep
    @:tdfield
    public dynamic function _name():{ var _0 : stdgo.GoString; var _1 : Bool; } return @:_0 __self__.value._name();
    @:keep
    @:tdfield
    public dynamic function _nsname():{ var _0 : stdgo._internal.encoding.xml.Xml_name.Name; var _1 : Bool; } return @:_0 __self__.value._nsname();
    @:keep
    @:tdfield
    public dynamic function _text(_quote:stdgo.GoInt, _cdata:Bool):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._text(_quote, _cdata);
    @:keep
    @:tdfield
    public dynamic function _ungetc(_b:stdgo.GoUInt8):Void @:_0 __self__.value._ungetc(_b);
    @:keep
    @:tdfield
    public dynamic function _mustgetc():{ var _0 : stdgo.GoUInt8; var _1 : Bool; } return @:_0 __self__.value._mustgetc();
    @:keep
    @:tdfield
    public dynamic function _savedOffset():stdgo.GoInt return @:_0 __self__.value._savedOffset();
    @:keep
    @:tdfield
    public dynamic function inputPos():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return @:_0 __self__.value.inputPos();
    @:keep
    @:tdfield
    public dynamic function inputOffset():stdgo.GoInt64 return @:_0 __self__.value.inputOffset();
    @:keep
    @:tdfield
    public dynamic function _getc():{ var _0 : stdgo.GoUInt8; var _1 : Bool; } return @:_0 __self__.value._getc();
    @:keep
    @:tdfield
    public dynamic function _space():Void @:_0 __self__.value._space();
    @:keep
    @:tdfield
    public dynamic function _attrval():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._attrval();
    @:keep
    @:tdfield
    public dynamic function _rawToken():{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } return @:_0 __self__.value._rawToken();
    @:keep
    @:tdfield
    public dynamic function rawToken():{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } return @:_0 __self__.value.rawToken();
    @:keep
    @:tdfield
    public dynamic function _autoClose(_t:stdgo._internal.encoding.xml.Xml_token.Token):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : Bool; } return @:_0 __self__.value._autoClose(_t);
    @:keep
    @:tdfield
    public dynamic function _popElement(_t:stdgo.Ref<stdgo._internal.encoding.xml.Xml_endelement.EndElement>):Bool return @:_0 __self__.value._popElement(_t);
    @:keep
    @:tdfield
    public dynamic function _syntaxError(_msg:stdgo.GoString):stdgo.Error return @:_0 __self__.value._syntaxError(_msg);
    @:keep
    @:tdfield
    public dynamic function _pushNs(_local:stdgo.GoString, _url:stdgo.GoString, _ok:Bool):Void @:_0 __self__.value._pushNs(_local, _url, _ok);
    @:keep
    @:tdfield
    public dynamic function _pushElement(_name:stdgo._internal.encoding.xml.Xml_name.Name):Void @:_0 __self__.value._pushElement(_name);
    @:keep
    @:tdfield
    public dynamic function _popEOF():Bool return @:_0 __self__.value._popEOF();
    @:keep
    @:tdfield
    public dynamic function _pushEOF():Void @:_0 __self__.value._pushEOF();
    @:keep
    @:tdfield
    public dynamic function _pop():stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack> return @:_0 __self__.value._pop();
    @:keep
    @:tdfield
    public dynamic function _push(_kind:stdgo.GoInt):stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack> return @:_0 __self__.value._push(_kind);
    @:keep
    @:tdfield
    public dynamic function _switchToReader(_r:stdgo._internal.io.Io_reader.Reader):Void @:_0 __self__.value._switchToReader(_r);
    @:keep
    @:tdfield
    public dynamic function _translate(_n:stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>, _isElementName:Bool):Void @:_0 __self__.value._translate(_n, _isElementName);
    @:keep
    @:tdfield
    public dynamic function token():{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } return @:_0 __self__.value.token();
    @:keep
    @:tdfield
    public dynamic function skip():stdgo.Error return @:_0 __self__.value.skip();
    @:keep
    @:tdfield
    public dynamic function _unmarshalPath(_tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _sv:stdgo._internal.reflect.Reflect_value.Value, _parents:stdgo.Slice<stdgo.GoString>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _depth:stdgo.GoInt):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._unmarshalPath(_tinfo, _sv, _parents, _start, _depth);
    @:keep
    @:tdfield
    public dynamic function _unmarshal(_val:stdgo._internal.reflect.Reflect_value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _depth:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._unmarshal(_val, _start, _depth);
    @:keep
    @:tdfield
    public dynamic function _unmarshalAttr(_val:stdgo._internal.reflect.Reflect_value.Value, _attr:stdgo._internal.encoding.xml.Xml_attr.Attr):stdgo.Error return @:_0 __self__.value._unmarshalAttr(_val, _attr);
    @:keep
    @:tdfield
    public dynamic function _unmarshalTextInterface(_val:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler):stdgo.Error return @:_0 __self__.value._unmarshalTextInterface(_val);
    @:keep
    @:tdfield
    public dynamic function _unmarshalInterface(_val:stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error return @:_0 __self__.value._unmarshalInterface(_val, _start);
    @:keep
    @:tdfield
    public dynamic function decodeElement(_v:stdgo.AnyInterface, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error return @:_0 __self__.value.decodeElement(_v, _start);
    @:keep
    @:tdfield
    public dynamic function decode(_v:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.decode(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.xml.Xml_decoderpointer.DecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
