package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BoolNode_asInterface) class BoolNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        return stdgo.Go.asInterface(@:check2r (@:checkr _b ?? throw "null pointer dereference")._tr._newBool((@:checkr _b ?? throw "null pointer dereference").pos, (@:checkr _b ?? throw "null pointer dereference").__True));
    }
    @:keep
    @:tdfield
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        @:check2r _sb.writeString((@:check2r _b.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference").__True) {
            return ("true" : stdgo.GoString);
        };
        return ("false" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_BoolNode.BoolNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
