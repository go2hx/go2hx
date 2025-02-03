package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.Attr_static_extension) abstract Attr(stdgo._internal.encoding.xml.Xml_Attr.Attr) from stdgo._internal.encoding.xml.Xml_Attr.Attr to stdgo._internal.encoding.xml.Xml_Attr.Attr {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:Name, ?value:String) this = new stdgo._internal.encoding.xml.Xml_Attr.Attr(name, (value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
