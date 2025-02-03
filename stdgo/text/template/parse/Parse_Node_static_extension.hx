package stdgo.text.template.parse;
class Node_static_extension {
    static public function _writeTo(t:stdgo._internal.text.template.parse.Parse_Node.Node, _0:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension._writeTo(t, _0);
    }
    static public function _tree(t:stdgo._internal.text.template.parse.Parse_Node.Node):Tree {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension._tree(t);
    }
    static public function position(t:stdgo._internal.text.template.parse.Parse_Node.Node):Pos {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.position(t);
    }
    static public function copy(t:stdgo._internal.text.template.parse.Parse_Node.Node):Node {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.copy(t);
    }
    static public function string(t:stdgo._internal.text.template.parse.Parse_Node.Node):String {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.string(t);
    }
    static public function type(t:stdgo._internal.text.template.parse.Parse_Node.Node):NodeType {
        return stdgo._internal.text.template.parse.Parse_Node_static_extension.Node_static_extension.type(t);
    }
}
