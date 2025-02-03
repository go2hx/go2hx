package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.FieldNode_static_extension) abstract FieldNode(stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode) from stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode to stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode {
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
    public var ident(get, set) : Array<String>;
    function get_ident():Array<String> return [for (i in this.ident) i];
    function set_ident(v:Array<String>):Array<String> {
        this.ident = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?ident:Array<String>) this = new stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), ([for (i in ident) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
