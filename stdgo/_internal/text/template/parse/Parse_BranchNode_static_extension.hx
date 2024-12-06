package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.BranchNode_asInterface) class BranchNode_static_extension {
    @:keep
    static public function copy( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode> = _b;
        {
            final __value__ = _b.nodeType;
            if (__value__ == ((10 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                return stdgo.Go.asInterface(_b._tr._newIf(_b.pos, _b.line, _b.pipe, _b.list, _b.elseList));
            } else if (__value__ == ((15 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                return stdgo.Go.asInterface(_b._tr._newRange(_b.pos, _b.line, _b.pipe, _b.list, _b.elseList));
            } else if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                return stdgo.Go.asInterface(_b._tr._newWith(_b.pos, _b.line, _b.pipe, _b.list, _b.elseList));
            } else {
                throw stdgo.Go.toInterface(("unknown branch type" : stdgo.GoString));
            };
        };
    }
    @:keep
    static public function _tree( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode> = _b;
        return _b._tr;
    }
    @:keep
    static public function _writeTo( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode> = _b;
        var _name = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            final __value__ = _b.nodeType;
            if (__value__ == ((10 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                _name = ("if" : stdgo.GoString);
            } else if (__value__ == ((15 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                _name = ("range" : stdgo.GoString);
            } else if (__value__ == ((19 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType))) {
                _name = ("with" : stdgo.GoString);
            } else {
                throw stdgo.Go.toInterface(("unknown branch type" : stdgo.GoString));
            };
        };
        _sb.writeString(("{{" : stdgo.GoString));
        _sb.writeString(_name?.__copy__());
        _sb.writeByte((32 : stdgo.GoUInt8));
        _b.pipe._writeTo(_sb);
        _sb.writeString(("}}" : stdgo.GoString));
        _b.list._writeTo(_sb);
        if ((_b.elseList != null && ((_b.elseList : Dynamic).__nil__ == null || !(_b.elseList : Dynamic).__nil__))) {
            _sb.writeString(("{{else}}" : stdgo.GoString));
            _b.elseList._writeTo(_sb);
        };
        _sb.writeString(("{{end}}" : stdgo.GoString));
    }
    @:keep
    static public function string( _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode> = _b;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _sb__pointer__ = (stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _b._writeTo(_sb__pointer__);
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_BranchNode.BranchNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
