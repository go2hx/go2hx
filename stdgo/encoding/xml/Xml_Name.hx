package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.Name_static_extension) abstract Name(stdgo._internal.encoding.xml.Xml_Name.Name) from stdgo._internal.encoding.xml.Xml_Name.Name to stdgo._internal.encoding.xml.Xml_Name.Name {
    public var space(get, set) : String;
    function get_space():String return this.space;
    function set_space(v:String):String {
        this.space = (v : stdgo.GoString);
        return v;
    }
    public var local(get, set) : String;
    function get_local():String return this.local;
    function set_local(v:String):String {
        this.local = (v : stdgo.GoString);
        return v;
    }
    public function new(?space:String, ?local:String) this = new stdgo._internal.encoding.xml.Xml_Name.Name((space : stdgo.GoString), (local : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
