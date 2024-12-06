package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.VariableNode_asInterface) class VariableNode_static_extension {
    @:keep
    static public function copy( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> = _v;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _tr : _v._tr, nodeType : (18 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), pos : _v.pos, ident : ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_v.ident : Array<stdgo.GoString>))) } : stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>));
    }
    @:keep
    static public function _tree( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> = _v;
        return _v._tr;
    }
    @:keep
    static public function _writeTo( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> = _v;
        for (_i => _id in _v.ident) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _sb.writeByte((46 : stdgo.GoUInt8));
            };
            _sb.writeString(_id?.__copy__());
        };
    }
    @:keep
    static public function string( _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode> = _v;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _v._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_VariableNode.VariableNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
