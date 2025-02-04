package stdgo._internal.html.template;
@:structInit @:using(stdgo._internal.html.template.Template_error_static_extension.Error_static_extension) class Error {
    public var errorCode : stdgo._internal.html.template.Template_errorcode.ErrorCode = ((0 : stdgo.GoInt) : stdgo._internal.html.template.Template_errorcode.ErrorCode);
    public var node : stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
    public var name : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public var description : stdgo.GoString = "";
    public function new(?errorCode:stdgo._internal.html.template.Template_errorcode.ErrorCode, ?node:stdgo._internal.text.template.parse.Parse_node.Node, ?name:stdgo.GoString, ?line:stdgo.GoInt, ?description:stdgo.GoString) {
        if (errorCode != null) this.errorCode = errorCode;
        if (node != null) this.node = node;
        if (name != null) this.name = name;
        if (line != null) this.line = line;
        if (description != null) this.description = description;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(errorCode, node, name, line, description);
    }
}
