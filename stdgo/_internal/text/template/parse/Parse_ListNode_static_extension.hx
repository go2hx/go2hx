package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ListNode_asInterface) class ListNode_static_extension {
    @:keep
    static public function copy( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        return stdgo.Go.asInterface(_l.copyList());
    }
    @:keep
    static public function copyList( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        if (_l == null || (_l : Dynamic).__nil__) {
            return _l;
        };
        var _n = _l._tr._newList(_l.pos);
        for (__0 => _elem in _l.nodes) {
            _n._append(_elem.copy());
        };
        return _n;
    }
    @:keep
    static public function _writeTo( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        for (__0 => _n in _l.nodes) {
            _n._writeTo(_sb);
        };
    }
    @:keep
    static public function string( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _l._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _tree( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        return _l._tr;
    }
    @:keep
    static public function _append( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _n:stdgo._internal.text.template.parse.Parse_Node.Node):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        _l.nodes = (_l.nodes.__append__(_n));
    }
    @:embedded
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return __self__.type();
    @:embedded
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return __self__.position();
}
