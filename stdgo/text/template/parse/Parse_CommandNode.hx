package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.CommandNode_static_extension) abstract CommandNode(stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode) from stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode to stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode {
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
    public var args(get, set) : Array<Node>;
    function get_args():Array<Node> return [for (i in this.args) i];
    function set_args(v:Array<Node>):Array<Node> {
        this.args = ([for (i in v) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?args:Array<Node>) this = new stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), ([for (i in args) i] : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
