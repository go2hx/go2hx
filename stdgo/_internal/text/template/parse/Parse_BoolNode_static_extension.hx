package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BoolNode_asInterface) class BoolNode_static_extension {
    @:keep
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        return stdgo.Go.asInterface(_b._tr._newBool(_b.pos, _b.__True));
    }
    @:keep
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        return _b._tr;
    }
    @:keep
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        _sb.writeString((_b.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        if (_b.__True) {
            return ("true" : stdgo.GoString);
        };
        return ("false" : stdgo.GoString);
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
