package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.TemplateNode_asInterface) class TemplateNode_static_extension {
    @:keep
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
        return stdgo.Go.asInterface(_t._tr._newTemplate(_t.pos, _t.line, _t.name?.__copy__(), _t.pipe.copyPipe()));
    }
    @:keep
    static public function _tree( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
        return _t._tr;
    }
    @:keep
    static public function _writeTo( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
        _sb.writeString(("{{template " : stdgo.GoString));
        _sb.writeString(stdgo._internal.strconv.Strconv_quote.quote(_t.name?.__copy__())?.__copy__());
        if ((_t.pipe != null && ((_t.pipe : Dynamic).__nil__ == null || !(_t.pipe : Dynamic).__nil__))) {
            _sb.writeByte((32 : stdgo.GoUInt8));
            _t.pipe._writeTo(_sb);
        };
        _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    static public function string( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _sb__pointer__ = (stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _t._writeTo(_sb__pointer__);
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
