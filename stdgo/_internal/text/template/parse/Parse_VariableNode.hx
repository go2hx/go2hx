package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_VariableNode_static_extension.VariableNode_static_extension) class VariableNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_NodeType.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    public var ident : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?ident:stdgo.Slice<stdgo.GoString>) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (ident != null) this.ident = ident;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_Pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_Pos.Pos return @:check31 (this.pos ?? throw "null pointer dereference").position;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:check31 (this.nodeType ?? throw "null pointer dereference").type;
    public function __copy__() {
        return new VariableNode(nodeType, pos, _tr, ident);
    }
}
