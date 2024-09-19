package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.T_elseNode_asInterface) class T_elseNode_static_extension {
    @:keep
    static public function copy( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> = _e;
        return stdgo.Go.asInterface(_e._tr._newElse(_e.pos, _e.line));
    }
    @:keep
    static public function _tree( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> = _e;
        return _e._tr;
    }
    @:keep
    static public function _writeTo( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> = _e;
        _sb.writeString((_e.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> = _e;
        return ("{{else}}" : stdgo.GoString);
    }
    @:keep
    static public function type( _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode>):stdgo._internal.text.template.parse.Parse_NodeType.NodeType {
        @:recv var _e:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode> = _e;
        return (6 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    }
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_T_elseNode.T_elseNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
