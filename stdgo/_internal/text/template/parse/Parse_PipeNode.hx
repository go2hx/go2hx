package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension) class PipeNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_NodeType.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    public var line : stdgo.GoInt = 0;
    public var isAssign : Bool = false;
    public var decl : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>);
    public var cmds : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>);
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?line:stdgo.GoInt, ?isAssign:Bool, ?decl:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>>, ?cmds:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (line != null) this.line = line;
        if (isAssign != null) this.isAssign = isAssign;
        if (decl != null) this.decl = decl;
        if (cmds != null) this.cmds = cmds;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_Pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_Pos.Pos return @:check31 (this.pos ?? throw "null pointer derefrence").position;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:check31 (this.nodeType ?? throw "null pointer derefrence").type;
    public function __copy__() {
        return new PipeNode(nodeType, pos, _tr, line, isAssign, decl, cmds);
    }
}
