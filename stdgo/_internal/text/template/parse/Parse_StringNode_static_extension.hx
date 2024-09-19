package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.StringNode_asInterface) class StringNode_static_extension {
    @:keep
    static public function copy( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> = _s;
        return stdgo.Go.asInterface(_s._tr._newString(_s.pos, _s.quoted?.__copy__(), _s.text?.__copy__()));
    }
    @:keep
    static public function _tree( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> = _s;
        return _s._tr;
    }
    @:keep
    static public function _writeTo( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> = _s;
        _sb.writeString((_s.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.template.parse.Parse_StringNode.StringNode> = _s;
        return _s.quoted?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_StringNode.StringNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_StringNode.StringNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
