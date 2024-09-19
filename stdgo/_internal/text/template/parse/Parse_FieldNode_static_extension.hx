package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.FieldNode_asInterface) class FieldNode_static_extension {
    @:keep
    static public function copy( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : _f._tr, nodeType : (8 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _f.pos, ident : ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_f.ident : Array<stdgo.GoString>))) } : stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>));
    }
    @:keep
    static public function _tree( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        return _f._tr;
    }
    @:keep
    static public function _writeTo( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        for (__0 => _id in _f.ident) {
            _sb.writeByte((46 : stdgo.GoUInt8));
            _sb.writeString(_id?.__copy__());
        };
    }
    @:keep
    static public function string( _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode> = _f;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _f._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_FieldNode.FieldNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
