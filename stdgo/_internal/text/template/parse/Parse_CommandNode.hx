package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension) class CommandNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_NodeType.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    public var args : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node> = (null : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>);
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?args:stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (args != null) this.args = args;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function position():stdgo._internal.text.template.parse.Parse_Pos.Pos return this.pos.position();
    @:embedded
    public function type():stdgo._internal.text.template.parse.Parse_NodeType.NodeType return this.nodeType.type();
    public function __copy__() {
        return new CommandNode(nodeType, pos, _tr, args);
    }
}
