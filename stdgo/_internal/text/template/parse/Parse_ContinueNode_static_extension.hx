package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ContinueNode_asInterface) class ContinueNode_static_extension {
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        @:check2r _sb.writeString(("{{continue}}" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        return ("{{continue}}" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode> = _c;
        return stdgo.Go.asInterface(@:check2r (@:checkr _c ?? throw "null pointer dereference")._tr._newContinue((@:checkr _c ?? throw "null pointer dereference").pos, (@:checkr _c ?? throw "null pointer dereference").line));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
