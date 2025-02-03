package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.T_typeInfo_static_extension) abstract T_typeInfo(stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo) from stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo to stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo {
    public var _xmlname(get, set) : T_fieldInfo;
    function get__xmlname():T_fieldInfo return this._xmlname;
    function set__xmlname(v:T_fieldInfo):T_fieldInfo {
        this._xmlname = (v : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        return v;
    }
    public var _fields(get, set) : Array<T_fieldInfo>;
    function get__fields():Array<T_fieldInfo> return [for (i in this._fields) i];
    function set__fields(v:Array<T_fieldInfo>):Array<T_fieldInfo> {
        this._fields = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        return v;
    }
    public function new(?_xmlname:T_fieldInfo, ?_fields:Array<T_fieldInfo>) this = new stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo((_xmlname : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>), ([for (i in _fields) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
