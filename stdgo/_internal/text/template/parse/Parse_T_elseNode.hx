package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_T_elseNode_static_extension.T_elseNode_static_extension) class T_elseNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_NodeType.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    public var line : stdgo.GoInt = 0;
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?line:stdgo.GoInt) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (line != null) this.line = line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_Pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_Pos.Pos return @:check3 (this.pos ?? throw "null pointer derefrence").position;
    public function __copy__() {
        return new T_elseNode(nodeType, pos, _tr, line);
    }
}
