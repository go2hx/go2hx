package stdgo.text.template.parse;
class PipeNode_static_extension {
    static public function copy(_p:PipeNode):Node {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.copy(_p);
    }
    static public function copyPipe(_p:PipeNode):PipeNode {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.copyPipe(_p);
    }
    static public function _tree(_p:PipeNode):Tree {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension._tree(_p);
    }
    static public function _writeTo(_p:PipeNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension._writeTo(_p, _sb);
    }
    static public function string(_p:PipeNode):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.string(_p);
    }
    static public function _append(_p:PipeNode, _command:CommandNode):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>);
        final _command = (_command : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
        stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension._append(_p, _command);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode):Pos {
        return stdgo._internal.text.template.parse.Parse_PipeNode_static_extension.PipeNode_static_extension.position(__self__);
    }
}
