package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_IdentifierNode_static_extension.IdentifierNode_static_extension) class IdentifierNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_NodeType.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    public var ident : stdgo.GoString = "";
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?ident:stdgo.GoString) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (ident != null) this.ident = ident;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_Pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_Pos.Pos return @:check3 (this.pos ?? throw "null pointer derefrence").position;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:check3 (this.nodeType ?? throw "null pointer derefrence").type;
    public function __copy__() {
        return new IdentifierNode(nodeType, pos, _tr, ident);
    }
}
