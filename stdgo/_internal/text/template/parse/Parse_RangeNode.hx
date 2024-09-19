package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension) class RangeNode {
    @:embedded
    public var branchNode : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode = ({} : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode);
    public function new(?branchNode:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode) {
        if (branchNode != null) this.branchNode = branchNode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function position():stdgo._internal.text.template.parse.Parse_Pos.Pos return this.branchNode.position();
    @:embedded
    public function string():stdgo.GoString return this.branchNode.string();
    @:embedded
    public function type():stdgo._internal.text.template.parse.Parse_NodeType.NodeType return this.branchNode.type();
    @:embedded
    public function _tree():stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return this.branchNode._tree();
    @:embedded
    public function _writeTo(_sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>) this.branchNode._writeTo(_sb);
    public function __copy__() {
        return new RangeNode(branchNode);
    }
}
