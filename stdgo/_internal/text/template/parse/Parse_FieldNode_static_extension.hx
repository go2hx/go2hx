package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.FieldNode_asInterface) class FieldNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : (@:checkr _f ?? throw "null pointer dereference")._tr, nodeType : (8 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : (@:checkr _f ?? throw "null pointer dereference").pos, ident : ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _f ?? throw "null pointer dereference").ident : Array<stdgo.GoString>))) } : stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>));
    }
    @:keep
    @:tdfield
    static public function _tree( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        for (__0 => _id in (@:checkr _f ?? throw "null pointer dereference").ident) {
            @:check2r _sb.writeByte((46 : stdgo.GoUInt8));
            @:check2r _sb.writeString(_id?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function string( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2r _f._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
