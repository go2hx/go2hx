package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.TemplateNode_asInterface) class TemplateNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
        return stdgo.Go.asInterface(@:check2r (@:checkr _t ?? throw "null pointer dereference")._tr._newTemplate((@:checkr _t ?? throw "null pointer dereference").pos, (@:checkr _t ?? throw "null pointer dereference").line, (@:checkr _t ?? throw "null pointer dereference").name?.__copy__(), @:check2r (@:checkr _t ?? throw "null pointer dereference").pipe.copyPipe()));
    }
    @:keep
    @:tdfield
    static public function _tree( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
        return (@:checkr _t ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
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
    static public function string( _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode> = _t;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2r _t._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_TemplateNode.TemplateNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
