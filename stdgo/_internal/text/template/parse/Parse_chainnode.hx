package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_chainnode_static_extension.ChainNode_static_extension) class ChainNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_nodetype.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_nodetype.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
    public var node : stdgo._internal.text.template.parse.Parse_node.Node = (null : stdgo._internal.text.template.parse.Parse_node.Node);
    public var field : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_nodetype.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, ?node:stdgo._internal.text.template.parse.Parse_node.Node, ?field:stdgo.Slice<stdgo.GoString>) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (node != null) this.node = node;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_pos.Pos return @:check31 (this.pos ?? throw "null pointer dereference").position;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_nodetype.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:check31 (this.nodeType ?? throw "null pointer dereference").type;
    public function __copy__() {
        return new ChainNode(nodeType, pos, _tr, node, field);
    }
}
