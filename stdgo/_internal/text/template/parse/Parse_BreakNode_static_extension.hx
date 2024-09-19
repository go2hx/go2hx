package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BreakNode_asInterface) class BreakNode_static_extension {
    @:keep
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        _sb.writeString(("{{break}}" : stdgo.GoString));
    }
    @:keep
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        return _b._tr;
    }
    @:keep
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        return ("{{break}}" : stdgo.GoString);
    }
    @:keep
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        return stdgo.Go.asInterface(_b._tr._newBreak(_b.pos, _b.line));
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
