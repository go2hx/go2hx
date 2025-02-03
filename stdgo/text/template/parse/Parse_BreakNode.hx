package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.BreakNode_static_extension) abstract BreakNode(stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode) from stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode to stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode {
    public var _tr(get, set) : Tree;
    function get__tr():Tree return this._tr;
    function set__tr(v:Tree):Tree {
        this._tr = (v : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
        return v;
    }
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
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_tr:Tree, ?nodeType:NodeType, ?pos:Pos, ?line:StdTypes.Int) this = new stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode((_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), nodeType, pos, (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
