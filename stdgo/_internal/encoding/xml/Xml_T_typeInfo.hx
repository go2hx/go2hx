package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_T_typeInfo_static_extension.T_typeInfo_static_extension) class T_typeInfo {
    public var _xmlname : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
    public var _fields : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
    public function new(?_xmlname:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>, ?_fields:stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>) {
        if (_xmlname != null) this._xmlname = _xmlname;
        if (_fields != null) this._fields = _fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeInfo(_xmlname, _fields);
    }
}
