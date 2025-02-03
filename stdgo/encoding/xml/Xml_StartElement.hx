package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.StartElement_static_extension) abstract StartElement(stdgo._internal.encoding.xml.Xml_StartElement.StartElement) from stdgo._internal.encoding.xml.Xml_StartElement.StartElement to stdgo._internal.encoding.xml.Xml_StartElement.StartElement {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public var attr(get, set) : Array<Attr>;
    function get_attr():Array<Attr> return [for (i in this.attr) i];
    function set_attr(v:Array<Attr>):Array<Attr> {
        this.attr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
        return v;
    }
    public function new(?name:Name, ?attr:Array<Attr>) this = new stdgo._internal.encoding.xml.Xml_StartElement.StartElement(name, ([for (i in attr) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
