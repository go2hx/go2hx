package stdgo.text.template.parse;
class NumberNode_static_extension {
    static public function copy(_n:NumberNode):Node {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.copy(_n);
    }
    static public function _tree(_n:NumberNode):Tree {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension._tree(_n);
    }
    static public function _writeTo(_n:NumberNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension._writeTo(_n, _sb);
    }
    static public function string(_n:NumberNode):String {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.string(_n);
    }
    static public function _simplifyComplex(_n:NumberNode):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode>);
        stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension._simplifyComplex(_n);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_NumberNode.NumberNode):Pos {
        return stdgo._internal.text.template.parse.Parse_NumberNode_static_extension.NumberNode_static_extension.position(__self__);
    }
}
