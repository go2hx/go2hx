package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.ChainNode_static_extension) abstract ChainNode(stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode) from stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode to stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode {
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
    public var node(get, set) : Node;
    function get_node():Node return this.node;
    function set_node(v:Node):Node {
        this.node = v;
        return v;
    }
    public var field(get, set) : Array<String>;
    function get_field():Array<String> return [for (i in this.field) i];
    function set_field(v:Array<String>):Array<String> {
        this.field = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?node:Node, ?field:Array<String>) this = new stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), node, ([for (i in field) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
