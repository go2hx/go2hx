package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ActionNode_asInterface) class ActionNode_static_extension {
    @:keep
    static public function copy( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        return stdgo.Go.asInterface(_a._tr._newAction(_a.pos, _a.line, _a.pipe.copyPipe()));
    }
    @:keep
    static public function _tree( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        return _a._tr;
    }
    @:keep
    static public function _writeTo( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        _sb.writeString(("{{" : stdgo.GoString));
        _a.pipe._writeTo(_sb);
        _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    static public function string( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _sb__pointer__ = (stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _a._writeTo(_sb__pointer__);
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
