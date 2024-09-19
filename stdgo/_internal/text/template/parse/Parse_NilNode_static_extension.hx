package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.NilNode_asInterface) class NilNode_static_extension {
    @:keep
    static public function copy( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = _n;
        return stdgo.Go.asInterface(_n._tr._newNil(_n.pos));
    }
    @:keep
    static public function _tree( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = _n;
        return _n._tr;
    }
    @:keep
    static public function _writeTo( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = _n;
        _sb.writeString((_n.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = _n;
        return ("nil" : stdgo.GoString);
    }
    @:keep
    static public function type( _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode>):stdgo._internal.text.template.parse.Parse_NodeType.NodeType {
        @:recv var _n:stdgo.Ref<stdgo._internal.text.template.parse.Parse_NilNode.NilNode> = _n;
        return (12 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    }
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_NilNode.NilNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
