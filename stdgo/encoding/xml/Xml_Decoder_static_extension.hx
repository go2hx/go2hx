package stdgo.encoding.xml;
class Decoder_static_extension {
    static public function _readName(_d:Decoder):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._readName(_d);
    }
    static public function _name(_d:Decoder):stdgo.Tuple<String, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._name(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nsname(_d:Decoder):stdgo.Tuple<Name, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._nsname(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _text(_d:Decoder, _quote:StdTypes.Int, _cdata:Bool):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _quote = (_quote : stdgo.GoInt);
        return [for (i in stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._text(_d, _quote, _cdata)) i];
    }
    static public function _ungetc(_d:Decoder, _b:std.UInt):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _b = (_b : stdgo.GoUInt8);
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._ungetc(_d, _b);
    }
    static public function _mustgetc(_d:Decoder):stdgo.Tuple<std.UInt, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._mustgetc(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _savedOffset(_d:Decoder):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._savedOffset(_d);
    }
    static public function inputPos(_d:Decoder):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.inputPos(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function inputOffset(_d:Decoder):haxe.Int64 {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.inputOffset(_d);
    }
    static public function _getc(_d:Decoder):stdgo.Tuple<std.UInt, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._getc(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _space(_d:Decoder):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._space(_d);
    }
    static public function _attrval(_d:Decoder):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return [for (i in stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._attrval(_d)) i];
    }
    static public function _rawToken(_d:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._rawToken(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rawToken(_d:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.rawToken(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _autoClose(_d:Decoder, _t:Token):stdgo.Tuple<Token, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._autoClose(_d, _t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popElement(_d:Decoder, _t:EndElement):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.xml.Xml_EndElement.EndElement>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._popElement(_d, _t);
    }
    static public function _syntaxError(_d:Decoder, _msg:String):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._syntaxError(_d, _msg);
    }
    static public function _pushNs(_d:Decoder, _local:String, _url:String, _ok:Bool):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _local = (_local : stdgo.GoString);
        final _url = (_url : stdgo.GoString);
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pushNs(_d, _local, _url, _ok);
    }
    static public function _pushElement(_d:Decoder, _name:Name):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pushElement(_d, _name);
    }
    static public function _popEOF(_d:Decoder):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._popEOF(_d);
    }
    static public function _pushEOF(_d:Decoder):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pushEOF(_d);
    }
    static public function _pop(_d:Decoder):T_stack {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pop(_d);
    }
    static public function _push(_d:Decoder, _kind:StdTypes.Int):T_stack {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _kind = (_kind : stdgo.GoInt);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._push(_d, _kind);
    }
    static public function _switchToReader(_d:Decoder, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._switchToReader(_d, _r);
    }
    static public function _translate(_d:Decoder, _n:Name, _isElementName:Bool):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _n = (_n : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>);
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._translate(_d, _n, _isElementName);
    }
    static public function token(_d:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.token(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function skip(_d:Decoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.skip(_d);
    }
    static public function _unmarshalPath(_d:Decoder, _tinfo:T_typeInfo, _sv:stdgo._internal.reflect.Reflect_Value.Value, _parents:Array<String>, _start:StartElement, _depth:StdTypes.Int):stdgo.Tuple<Bool, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _tinfo = (_tinfo : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        final _parents = ([for (i in _parents) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _start = (_start : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
        final _depth = (_depth : stdgo.GoInt);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalPath(_d, _tinfo, _sv, _parents, _start, _depth);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _unmarshal(_d:Decoder, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:StartElement, _depth:StdTypes.Int):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _start = (_start : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
        final _depth = (_depth : stdgo.GoInt);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshal(_d, _val, _start, _depth);
    }
    static public function _unmarshalAttr(_d:Decoder, _val:stdgo._internal.reflect.Reflect_Value.Value, _attr:Attr):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalAttr(_d, _val, _attr);
    }
    static public function _unmarshalTextInterface(_d:Decoder, _val:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalTextInterface(_d, _val);
    }
    static public function _unmarshalInterface(_d:Decoder, _val:Unmarshaler, _start:StartElement):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _start = (_start : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalInterface(_d, _val, _start);
    }
    static public function decodeElement(_d:Decoder, _v:stdgo.AnyInterface, _start:StartElement):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _v = (_v : stdgo.AnyInterface);
        final _start = (_start : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.decodeElement(_d, _v, _start);
    }
    static public function decode(_d:Decoder, _v:stdgo.AnyInterface):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.decode(_d, _v);
    }
}
