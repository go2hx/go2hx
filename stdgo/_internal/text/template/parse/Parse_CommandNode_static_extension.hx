package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.CommandNode_asInterface) class CommandNode_static_extension {
    @:keep
    static public function copy( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> = _c;
        if ((_c == null || (_c : Dynamic).__nil__)) {
            return stdgo.Go.asInterface(_c);
        };
        var _n = _c._tr._newCommand(_c.pos);
        for (__0 => _c in _c.args) {
            _n._append(_c.copy());
        };
        return stdgo.Go.asInterface(_n);
    }
    @:keep
    static public function _tree( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> = _c;
        return _c._tr;
    }
    @:keep
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> = _c;
        for (_i => _arg in _c.args) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _sb.writeByte((32 : stdgo.GoUInt8));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_arg) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>), _1 : false };
                }, _arg = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _sb.writeByte((40 : stdgo.GoUInt8));
                    _arg._writeTo(_sb);
                    _sb.writeByte((41 : stdgo.GoUInt8));
                    continue;
                };
            };
            _arg._writeTo(_sb);
        };
    }
    @:keep
    static public function string( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> = _c;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _sb__pointer__ = (stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _c._writeTo(_sb__pointer__);
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _append( _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>, _arg:stdgo._internal.text.template.parse.Parse_Node.Node):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> = _c;
        _c.args = (_c.args.__append__(_arg));
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
