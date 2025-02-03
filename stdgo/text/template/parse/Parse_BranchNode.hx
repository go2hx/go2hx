package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.BranchNode_static_extension) abstract BranchNode(stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode) from stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode to stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode {
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
    public var pipe(get, set) : PipeNode;
    function get_pipe():PipeNode return this.pipe;
    function set_pipe(v:PipeNode):PipeNode {
        this.pipe = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return v;
    }
    public var list(get, set) : ListNode;
    function get_list():ListNode return this.list;
    function set_list(v:ListNode):ListNode {
        this.list = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return v;
    }
    public var elseList(get, set) : ListNode;
    function get_elseList():ListNode return this.elseList;
    function set_elseList(v:ListNode):ListNode {
        this.elseList = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?line:StdTypes.Int, ?pipe:PipeNode, ?list:ListNode, ?elseList:ListNode) this = new stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), (line : stdgo.GoInt), (pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), (list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>), (elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
