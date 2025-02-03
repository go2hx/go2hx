package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.EndElement_static_extension) abstract EndElement(stdgo._internal.encoding.xml.Xml_EndElement.EndElement) from stdgo._internal.encoding.xml.Xml_EndElement.EndElement to stdgo._internal.encoding.xml.Xml_EndElement.EndElement {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public function new(?name:Name) this = new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
