package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_attr_static_extension.Attr_static_extension) class Attr {
    public var name : stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
    public var value : stdgo.GoString = "";
    public function new(?name:stdgo._internal.encoding.xml.Xml_name.Name, ?value:stdgo.GoString) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Attr(name, value);
    }
}
