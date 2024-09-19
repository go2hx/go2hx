package stdgo._internal.encoding.xml;
@:structInit class Attr {
    public var name : stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
    public var value : stdgo.GoString = "";
    public function new(?name:stdgo._internal.encoding.xml.Xml_Name.Name, ?value:stdgo.GoString) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Attr(name, value);
    }
}
