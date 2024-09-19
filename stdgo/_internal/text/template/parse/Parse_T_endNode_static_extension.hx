package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_endNode_asInterface) class T_endNode_static_extension {
    @:keep
    static public function copy( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> = _e;
        return stdgo.Go.asInterface(_e._tr._newEnd(_e.pos));
    }
    @:keep
    static public function _tree( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> = _e;
        return _e._tr;
    }
    @:keep
    static public function _writeTo( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> = _e;
        _sb.writeString((_e.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode> = _e;
        return ("{{end}}" : stdgo.GoString);
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_T_endNode.T_endNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
