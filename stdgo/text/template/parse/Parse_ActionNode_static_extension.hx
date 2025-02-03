package stdgo.text.template.parse;
class ActionNode_static_extension {
    static public function copy(_a:ActionNode):Node {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>);
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.copy(_a);
    }
    static public function _tree(_a:ActionNode):Tree {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>);
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension._tree(_a);
    }
    static public function _writeTo(_a:ActionNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension._writeTo(_a, _sb);
    }
    static public function string(_a:ActionNode):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>);
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.string(_a);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ActionNode_static_extension.ActionNode_static_extension.position(__self__);
    }
}
