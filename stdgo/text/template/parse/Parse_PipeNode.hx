package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.PipeNode_static_extension) abstract PipeNode(stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode) from stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode to stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode {
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
    public var isAssign(get, set) : Bool;
    function get_isAssign():Bool return this.isAssign;
    function set_isAssign(v:Bool):Bool {
        this.isAssign = v;
        return v;
    }
    public var decl(get, set) : Array<VariableNode>;
    function get_decl():Array<VariableNode> return [for (i in this.decl) i];
    function set_decl(v:Array<VariableNode>):Array<VariableNode> {
        this.decl = ([for (i in v) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
        return v;
    }
    public var cmds(get, set) : Array<CommandNode>;
    function get_cmds():Array<CommandNode> return [for (i in this.cmds) i];
    function set_cmds(v:Array<CommandNode>):Array<CommandNode> {
        this.cmds = ([for (i in v) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?isAssign:Bool, ?decl:Array<VariableNode>, ?cmds:Array<CommandNode>) this = new stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), (line : stdgo.GoInt), isAssign, ([for (i in decl) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>), ([for (i in cmds) (i : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
