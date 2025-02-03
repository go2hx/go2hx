package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.TemplateNode_static_extension) abstract TemplateNode(stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode) from stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode to stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode {
    public var nodeType(get, set) : NodeType;
    function get_nodeType():NodeType return this.nodeType;
    function set_nodeType(v:NodeType):NodeType {
        this.nodeType = v;
        return v;
    }
    public var pos(get, set) : Pos;
    function get_pos():Pos return this.pos;
    function set_pos(v:Pos):Pos {
        this.pos = v;
        return v;
    }
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?name:String, ?pipe:PipeNode) this = new stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), (line : stdgo.GoInt), (name : stdgo.GoString), (pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
