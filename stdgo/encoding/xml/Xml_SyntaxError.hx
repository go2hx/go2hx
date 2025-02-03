package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError) from stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError to stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError {
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?msg:String, ?line:StdTypes.Int) this = new stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError((msg : stdgo.GoString), (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
