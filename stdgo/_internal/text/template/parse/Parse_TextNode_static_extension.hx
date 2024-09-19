package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.TextNode_asInterface) class TextNode_static_extension {
    @:keep
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> = _t;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : _t._tr, nodeType : (0 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _t.pos, text : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_t.text : Array<stdgo.GoUInt8>))) } : stdgo._internal.text.template.parse.Parse_TextNode.TextNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>));
    }
    @:keep
    static public function _tree( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> = _t;
        return _t._tr;
    }
    @:keep
    static public function _writeTo( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> = _t;
        _sb.writeString((_t.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TextNode.TextNode> = _t;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(stdgo._internal.text.template.parse.Parse__textFormat._textFormat?.__copy__(), stdgo.Go.toInterface(_t.text))?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_TextNode.TextNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
