package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_continuenode_static_extension.ContinueNode_static_extension) class ContinueNode {
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_nodetype.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_nodetype.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_pos.Pos);
    public var line : stdgo.GoInt = 0;
    public function new(?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>, ?nodeType:stdgo._internal.text.template.parse.Parse_nodetype.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_pos.Pos, ?line:stdgo.GoInt) {
        if (_tr != null) this._tr = _tr;
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (line != null) this.line = line;
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
        return new ContinueNode(_tr, nodeType, pos, line);
    }
}
