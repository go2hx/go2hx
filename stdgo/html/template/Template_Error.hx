package stdgo.html.template;
@:structInit @:using(stdgo.html.template.Template.Error_static_extension) abstract Error(stdgo._internal.html.template.Template_Error.Error) from stdgo._internal.html.template.Template_Error.Error to stdgo._internal.html.template.Template_Error.Error {
    public var errorCode(get, set) : ErrorCode;
    function get_errorCode():ErrorCode return this.errorCode;
    function set_errorCode(v:ErrorCode):ErrorCode {
        this.errorCode = v;
        return v;
    }
    public var node(get, set) : stdgo._internal.text.template.parse.Parse_Node.Node;
    function get_node():stdgo._internal.text.template.parse.Parse_Node.Node return this.node;
    function set_node(v:stdgo._internal.text.template.parse.Parse_Node.Node):stdgo._internal.text.template.parse.Parse_Node.Node {
        this.node = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var description(get, set) : String;
    function get_description():String return this.description;
    function set_description(v:String):String {
        this.description = (v : stdgo.GoString);
        return v;
    }
    public function new(?errorCode:ErrorCode, ?node:stdgo._internal.text.template.parse.Parse_Node.Node, ?name:String, ?line:StdTypes.Int, ?description:String) this = new stdgo._internal.html.template.Template_Error.Error(errorCode, node, (name : stdgo.GoString), (line : stdgo.GoInt), (description : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
