package stdgo.encoding.xml;
class T_printer_static_extension {
    static public function escapeString(_p:T_printer, _s:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.escapeString(_p, _s);
    }
    static public function _writeIndent(_p:T_printer, _depthDelta:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _depthDelta = (_depthDelta : stdgo.GoInt);
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._writeIndent(_p, _depthDelta);
    }
    static public function _cachedWriteError(_p:T_printer):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._cachedWriteError(_p);
    }
    static public function close(_p:T_printer):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.close(_p);
    }
    static public function writeByte(_p:T_printer, _c:std.UInt):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.writeByte(_p, _c);
    }
    static public function writeString(_p:T_printer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.writeString(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_p:T_printer, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _marshalStruct(_p:T_printer, _tinfo:T_typeInfo, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _tinfo = (_tinfo : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalStruct(_p, _tinfo, _val);
    }
    static public function _marshalSimple(_p:T_printer, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalSimple(_p, _typ, _val);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _writeEnd(_p:T_printer, _name:Name):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._writeEnd(_p, _name);
    }
    static public function _writeStart(_p:T_printer, _start:StartElement):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _start = (_start : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._writeStart(_p, _start);
    }
    static public function _marshalTextInterface(_p:T_printer, _val:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _start:StartElement):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalTextInterface(_p, _val, _start);
    }
    static public function _marshalInterface(_p:T_printer, _val:Marshaler, _start:StartElement):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalInterface(_p, _val, _start);
    }
    static public function _marshalAttr(_p:T_printer, _start:StartElement, _name:Name, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _start = (_start : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalAttr(_p, _start, _name, _val);
    }
    static public function _marshalValue(_p:T_printer, _val:stdgo._internal.reflect.Reflect_Value.Value, _finfo:T_fieldInfo, _startTemplate:StartElement):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _finfo = (_finfo : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        final _startTemplate = (_startTemplate : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalValue(_p, _val, _finfo, _startTemplate);
    }
    static public function _popPrefix(_p:T_printer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._popPrefix(_p);
    }
    static public function _markPrefix(_p:T_printer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._markPrefix(_p);
    }
    static public function _deleteAttrPrefix(_p:T_printer, _prefix:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _prefix = (_prefix : stdgo.GoString);
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._deleteAttrPrefix(_p, _prefix);
    }
    static public function _createAttrPrefix(_p:T_printer, _url:String):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>);
        final _url = (_url : stdgo.GoString);
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._createAttrPrefix(_p, _url);
    }
}
