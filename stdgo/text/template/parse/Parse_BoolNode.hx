package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.BoolNode_static_extension) abstract BoolNode(stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode) from stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode to stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode {
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
    public var __True(get, set) : Bool;
    function get___True():Bool return this.__True;
    function set___True(v:Bool):Bool {
        this.__True = v;
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?__True:Bool) this = new stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), __True);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
