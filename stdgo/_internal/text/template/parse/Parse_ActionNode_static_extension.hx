package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ActionNode_asInterface) class ActionNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        return stdgo.Go.asInterface(@:check2r (@:checkr _a ?? throw "null pointer dereference")._tr._newAction((@:checkr _a ?? throw "null pointer dereference").pos, (@:checkr _a ?? throw "null pointer dereference").line, @:check2r (@:checkr _a ?? throw "null pointer dereference").pipe.copyPipe()));
    }
    @:keep
    @:tdfield
    static public function _tree( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        return (@:checkr _a ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        @:check2r _sb.writeString(("{{" : stdgo.GoString));
        @:check2r (@:checkr _a ?? throw "null pointer dereference").pipe._writeTo(_sb);
        @:check2r _sb.writeString(("}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode> = _a;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2r _a._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_ActionNode.ActionNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
