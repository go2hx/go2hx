package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_pipenode_static_extension.PipeNode_static_extension) class PipeNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_nodetype.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_nodetype.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
    public var line : stdgo.GoInt = 0;
    public var isAssign : Bool = false;
    public var decl : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>);
    public var cmds : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>);
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_nodetype.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, ?line:stdgo.GoInt, ?isAssign:Bool, ?decl:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_variablenode.VariableNode>>, ?cmds:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (line != null) this.line = line;
        if (isAssign != null) this.isAssign = isAssign;
        if (decl != null) this.decl = decl;
        if (cmds != null) this.cmds = cmds;
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
        return new PipeNode(nodeType, pos, _tr, line, isAssign, decl, cmds);
    }
}
