package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BreakNode_asInterface) class BreakNode_static_extension {
    @:keep
    @:tdfield
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        @:check2r _sb.writeString(("{{break}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        return ("{{break}}" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode> = _b;
        return stdgo.Go.asInterface(@:check2r (@:checkr _b ?? throw "null pointer dereference")._tr._newBreak((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").line));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
