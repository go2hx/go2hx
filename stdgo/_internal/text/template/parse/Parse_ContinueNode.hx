package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_ContinueNode_static_extension.ContinueNode_static_extension) class ContinueNode {
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_NodeType.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var line : stdgo.GoInt = 0;
    public function new(?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?nodeType:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?line:stdgo.GoInt) {
        if (_tr != null) this._tr = _tr;
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (line != null) this.line = line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function position():stdgo._internal.text.template.parse.Parse_Pos.Pos return this.pos.position();
    @:embedded
    public function type():stdgo._internal.text.template.parse.Parse_NodeType.NodeType return this.nodeType.type();
    public function __copy__() {
        return new ContinueNode(_tr, nodeType, pos, line);
    }
}