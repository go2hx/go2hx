package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_StartElement_static_extension.StartElement_static_extension) class StartElement {
    public var name : stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
    public var attr : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
    public function new(?name:stdgo._internal.encoding.xml.Xml_Name.Name, ?attr:stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>) {
        if (name != null) this.name = name;
        if (attr != null) this.attr = attr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StartElement(name, attr);
    }
}
