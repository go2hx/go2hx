package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.DotNode_asInterface) class DotNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return stdgo.Go.asInterface(@:check2r (@:checkr _d ?? throw "null pointer dereference")._tr._newDot((@:checkr _d ?? throw "null pointer dereference").pos));
    }
    @:keep
    @:tdfield
    static public function _tree( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return (@:checkr _d ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        @:check2r _sb.writeString((@:check2r _d.string() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return ("." : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function type( _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode>):stdgo._internal.text.template.parse.Parse_NodeType.NodeType {
        @:recv var _d:stdgo.Ref<stdgo._internal.text.template.parse.Parse_DotNode.DotNode> = _d;
        return (5 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_DotNode.DotNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
