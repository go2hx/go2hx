package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ContinueNode_asInterface) class ContinueNode_static_extension {
    @:keep
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        _sb.writeString(("{{continue}}" : stdgo.GoString));
    }
    @:keep
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        return _c._tr;
    }
    @:keep
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        return ("{{continue}}" : stdgo.GoString);
    }
    @:keep
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        return stdgo.Go.asInterface(_c._tr._newContinue(_c.pos, _c.line));
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
