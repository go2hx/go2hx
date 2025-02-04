package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.TemplateNode_asInterface) class TemplateNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = _t;
        return stdgo.Go.asInterface(@:check2r (@:checkr _t ?? throw "null pointer dereference")._tr._newTemplate((@:checkr _t ?? throw "null pointer dereference").pos, (@:checkr _t ?? throw "null pointer dereference").line, (@:checkr _t ?? throw "null pointer dereference").name?.__copy__(), @:check2r (@:checkr _t ?? throw "null pointer dereference").pipe.copyPipe()));
    }
    @:keep
    @:tdfield
    static public function _tree( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = _t;
        return (@:checkr _t ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = _t;
        @:check2r _sb.writeString(("{{template " : stdgo.GoString));
        @:check2r _sb.writeString(stdgo._internal.strconv.Strconv_quote.quote((@:checkr _t ?? throw "null pointer dereference").name?.__copy__())?.__copy__());
        if (((@:checkr _t ?? throw "null pointer dereference").pipe != null && (((@:checkr _t ?? throw "null pointer dereference").pipe : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference").pipe : Dynamic).__nil__))) {
            @:check2r _sb.writeByte((32 : stdgo.GoUInt8));
            @:check2r (@:checkr _t ?? throw "null pointer dereference").pipe._writeTo(_sb);
        };
        @:check2r _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode> = _t;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2r _t._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_templatenode.TemplateNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
