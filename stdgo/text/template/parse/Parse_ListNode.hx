package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.ListNode_static_extension) abstract ListNode(stdgo._internal.text.template.parse.Parse_ListNode.ListNode) from stdgo._internal.text.template.parse.Parse_ListNode.ListNode to stdgo._internal.text.template.parse.Parse_ListNode.ListNode {
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
    public var nodes(get, set) : Array<Node>;
    function get_nodes():Array<Node> return [for (i in this.nodes) i];
    function set_nodes(v:Array<Node>):Array<Node> {
        this.nodes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?nodes:Array<Node>) this = new stdgo._internal.text.template.parse.Parse_ListNode.ListNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), ([for (i in nodes) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
