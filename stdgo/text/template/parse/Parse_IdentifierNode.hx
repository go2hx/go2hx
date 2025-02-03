package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.IdentifierNode_static_extension) abstract IdentifierNode(stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode) from stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode to stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode {
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
    public var ident(get, set) : String;
    function get_ident():String return this.ident;
    function set_ident(v:String):String {
        this.ident = (v : stdgo.GoString);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:String) this = new stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), (ident : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
