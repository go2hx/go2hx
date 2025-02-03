package stdgo.text.template.parse;
@:structInit @:using(stdgo.text.template.parse.Parse.WithNode_static_extension) abstract WithNode(stdgo._internal.text.template.parse.Parse_WithNode.WithNode) from stdgo._internal.text.template.parse.Parse_WithNode.WithNode to stdgo._internal.text.template.parse.Parse_WithNode.WithNode {
    public var branchNode(get, set) : BranchNode;
    function get_branchNode():BranchNode return this.branchNode;
    function set_branchNode(v:BranchNode):BranchNode {
        this.branchNode = v;
        return v;
    }
    public function new(?branchNode:BranchNode) this = new stdgo._internal.text.template.parse.Parse_WithNode.WithNode(branchNode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
