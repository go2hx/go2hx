package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_RangeNode_static_extension.RangeNode_static_extension) class RangeNode {
    @:embedded
    public var branchNode : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode = ({} : stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode);
    public function new(?branchNode:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode) {
        if (branchNode != null) this.branchNode = branchNode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_Pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_Pos.Pos return @:check31 (this.branchNode ?? throw "null pointer dereference").position;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this.branchNode.string;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:check31 (this.branchNode ?? throw "null pointer dereference").type;
    public var _tree(get, never) : () -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>;
    @:embedded
    @:embeddededffieldsffun
    public function get__tree():() -> stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> return @:check32 this.branchNode._tree;
    public var _writeTo(get, never) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeTo():stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder> -> Void return @:check32 this.branchNode._writeTo;
    public function __copy__() {
        return new RangeNode(branchNode);
    }
}
