package stdgo.text.template.parse;
class CommandNode_static_extension {
    static public function copy(_c:CommandNode):Node {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.copy(_c);
    }
    static public function _tree(_c:CommandNode):Tree {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:CommandNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:CommandNode):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.string(_c);
    }
    static public function _append(_c:CommandNode, _arg:Node):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
        stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension._append(_c, _arg);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode):Pos {
        return stdgo._internal.text.template.parse.Parse_CommandNode_static_extension.CommandNode_static_extension.position(__self__);
    }
}
