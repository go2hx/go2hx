package stdgo.text.template.parse;
class TextNode_static_extension {
    static public function copy(_t:TextNode):Node {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>);
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.copy(_t);
    }
    static public function _tree(_t:TextNode):Tree {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>);
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension._tree(_t);
    }
    static public function _writeTo(_t:TextNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension._writeTo(_t, _sb);
    }
    static public function string(_t:TextNode):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>);
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.string(_t);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):Pos {
        return stdgo._internal.text.template.parse.Parse_TextNode_static_extension.TextNode_static_extension.position(__self__);
    }
}
