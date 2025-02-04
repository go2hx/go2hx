package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.StartElement_asInterface) class StartElement_static_extension {
    @:keep
    @:tdfield
    static public function end( _e:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo._internal.encoding.xml.Xml_endelement.EndElement {
        @:recv var _e:stdgo._internal.encoding.xml.Xml_startelement.StartElement = _e?.__copy__();
        return (new stdgo._internal.encoding.xml.Xml_endelement.EndElement(_e.name?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
    }
    @:keep
    @:tdfield
    static public function copy( _e:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo._internal.encoding.xml.Xml_startelement.StartElement {
        @:recv var _e:stdgo._internal.encoding.xml.Xml_startelement.StartElement = _e?.__copy__();
        var _attrs = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>((_e.attr.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_e.attr.length : stdgo.GoInt).toBasic() > 0 ? (_e.attr.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_attr.Attr)]) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        _attrs.__copyTo__(_e.attr);
        _e.attr = _attrs;
        return _e?.__copy__();
    }
}
