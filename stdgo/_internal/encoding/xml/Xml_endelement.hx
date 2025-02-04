package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_endelement_static_extension.EndElement_static_extension) class EndElement {
    public var name : stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
    public function new(?name:stdgo._internal.encoding.xml.Xml_name.Name) {
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EndElement(name);
    }
}
