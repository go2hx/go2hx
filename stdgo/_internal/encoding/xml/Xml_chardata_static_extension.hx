package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.CharData_asInterface) class CharData_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo._internal.encoding.xml.Xml_chardata.CharData):stdgo._internal.encoding.xml.Xml_chardata.CharData {
        @:recv var _c:stdgo._internal.encoding.xml.Xml_chardata.CharData = _c;
        return (stdgo._internal.bytes.Bytes_clone.clone(_c) : stdgo._internal.encoding.xml.Xml_chardata.CharData);
    }
}
