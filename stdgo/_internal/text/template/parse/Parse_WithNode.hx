package stdgo._internal.text.template.parse;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_WithNode_static_extension.WithNode_static_extension) class WithNode {
    @:embedded
    public var branchNode : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode = ({} : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode);
    public function new(?branchNode:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode) {
        if (branchNode != null) this.branchNode = branchNode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_Pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_Pos.Pos return @:check3 (this.branchNode ?? throw "null pointer derefrence").position;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this.branchNode ?? throw "null pointer derefrence").string;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:check3 (this.branchNode ?? throw "null pointer derefrence").type;
    public var _tree(get, never) : () -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>;
    @:embedded
    @:embeddededffieldsffun
    public function get__tree():() -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return @:check3 (this.branchNode ?? throw "null pointer derefrence")._tree;
    public var _writeTo(get, never) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeTo():stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> -> Void return @:check3 (this.branchNode ?? throw "null pointer derefrence")._writeTo;
    public function __copy__() {
        return new WithNode(branchNode);
    }
}
