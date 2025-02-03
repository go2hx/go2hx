package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.CommentNode_static_extension) abstract CommentNode(stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode) from stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode to stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode {
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
    public var text(get, set) : String;
    function get_text():String return this.text;
    function set_text(v:String):String {
        this.text = (v : stdgo.GoString);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?text:String) this = new stdgo._internal.text.template.parse.Parse_CommentNode.CommentNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), (text : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
