package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.DotNode_asInterface) class DotNode_static_extension {
    @:keep
    static public function copy( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return stdgo.Go.asInterface(_d._tr._newDot(_d.pos));
    }
    @:keep
    static public function _tree( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return _d._tr;
    }
    @:keep
    static public function _writeTo( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        _sb.writeString((_d.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function string( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return ("." : stdgo.GoString);
    }
    @:keep
    static public function type( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo._internal.text.template.parse.Parse_NodeType.NodeType {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return (5 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    }
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_DotNode.DotNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
