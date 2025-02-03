package stdgo.text.template.parse;
class StringNode_static_extension {
    static public function copy(_s:StringNode):Node {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>);
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.copy(_s);
    }
    static public function _tree(_s:StringNode):Tree {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>);
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension._tree(_s);
    }
    static public function _writeTo(_s:StringNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension._writeTo(_s, _sb);
    }
    static public function string(_s:StringNode):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>);
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.string(_s);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_StringNode.StringNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_StringNode.StringNode):Pos {
        return stdgo._internal.text.template.parse.Parse_StringNode_static_extension.StringNode_static_extension.position(__self__);
    }
}
