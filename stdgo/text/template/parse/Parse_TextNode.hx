package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.TextNode_static_extension) abstract TextNode(stdgo._internal.text.template.parse.Parse_TextNode.TextNode) from stdgo._internal.text.template.parse.Parse_TextNode.TextNode to stdgo._internal.text.template.parse.Parse_TextNode.TextNode {
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
    public var text(get, set) : Array<std.UInt>;
    function get_text():Array<std.UInt> return [for (i in this.text) i];
    function set_text(v:Array<std.UInt>):Array<std.UInt> {
        this.text = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?nodeType:NodeType, ?pos:Pos, ?_tr:Tree, ?text:Array<std.UInt>) this = new stdgo._internal.text.template.parse.Parse_TextNode.TextNode(nodeType, pos, (_tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>), ([for (i in text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
