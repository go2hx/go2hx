package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_BranchNode_static_extension.BranchNode_static_extension) class BranchNode {
    @:embedded
    public var nodeType : stdgo._internal.text.template.parse.Parse_NodeType.NodeType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    @:embedded
    public var pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var _tr : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>);
    public var line : stdgo.GoInt = 0;
    public var pipe : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
    public var list : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
    public var elseList : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
    public function new(?nodeType:stdgo._internal.text.template.parse.Parse_NodeType.NodeType, ?pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?_tr:stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>, ?line:stdgo.GoInt, ?pipe:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, ?list:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, ?elseList:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>) {
        if (nodeType != null) this.nodeType = nodeType;
        if (pos != null) this.pos = pos;
        if (_tr != null) this._tr = _tr;
        if (line != null) this.line = line;
        if (pipe != null) this.pipe = pipe;
        if (list != null) this.list = list;
        if (elseList != null) this.elseList = elseList;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var position(get, never) : () -> stdgo._internal.text.template.parse.Parse_Pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_position():() -> stdgo._internal.text.template.parse.Parse_Pos.Pos return @:check31 (this.pos ?? throw "null pointer dereference").position;
    public var type(get, never) : () -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:check31 (this.nodeType ?? throw "null pointer dereference").type;
    public function __copy__() {
        return new BranchNode(nodeType, pos, _tr, line, pipe, list, elseList);
    }
}
