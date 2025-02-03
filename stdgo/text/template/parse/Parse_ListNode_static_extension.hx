package stdgo.text.template.parse;
class ListNode_static_extension {
    static public function copy(_l:ListNode):Node {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.copy(_l);
    }
    static public function copyList(_l:ListNode):ListNode {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.copyList(_l);
    }
    static public function _writeTo(_l:ListNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension._writeTo(_l, _sb);
    }
    static public function string(_l:ListNode):String {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.string(_l);
    }
    static public function _tree(_l:ListNode):Tree {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension._tree(_l);
    }
    static public function _append(_l:ListNode, _n:Node):Void {
        final _l = (_l : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>);
        stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension._append(_l, _n);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ListNode_static_extension.ListNode_static_extension.position(__self__);
    }
}
