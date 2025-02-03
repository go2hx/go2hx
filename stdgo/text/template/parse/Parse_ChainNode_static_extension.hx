package stdgo.text.template.parse;
class ChainNode_static_extension {
    static public function copy(_c:ChainNode):Node {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>);
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.copy(_c);
    }
    static public function _tree(_c:ChainNode):Tree {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>);
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension._tree(_c);
    }
    static public function _writeTo(_c:ChainNode, _sb:stdgo._internal.strings.Strings_Builder.Builder):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>);
        final _sb = (_sb : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension._writeTo(_c, _sb);
    }
    static public function string(_c:ChainNode):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>);
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.string(_c);
    }
    static public function add(_c:ChainNode, _field:String):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode>);
        final _field = (_field : stdgo.GoString);
        stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.add(_c, _field);
    }
    public static function type(__self__:stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode):NodeType {
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.type(__self__);
    }
    public static function position(__self__:stdgo._internal.text.template.parse.Parse_ChainNode.ChainNode):Pos {
        return stdgo._internal.text.template.parse.Parse_ChainNode_static_extension.ChainNode_static_extension.position(__self__);
    }
}
