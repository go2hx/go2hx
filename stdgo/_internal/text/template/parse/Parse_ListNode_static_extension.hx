package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ListNode_asInterface) class ListNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo._internal.text.template.parse.Parse_Node.Node {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        return stdgo.Go.asInterface(@:check2r _l.copyList());
    }
    @:keep
    @:tdfield
    static public function copyList( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        if ((_l == null || (_l : Dynamic).__nil__)) {
            return _l;
        };
        var _n = @:check2r (@:checkr _l ?? throw "null pointer dereference")._tr._newList((@:checkr _l ?? throw "null pointer dereference").pos);
        for (__0 => _elem in (@:checkr _l ?? throw "null pointer dereference").nodes) {
            @:check2r _n._append(_elem.copy());
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        for (__0 => _n in (@:checkr _l ?? throw "null pointer dereference").nodes) {
            _n._writeTo(_sb);
        };
    }
    @:keep
    @:tdfield
    static public function string( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2r _l._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        return (@:check2 _sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _tree( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree> {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        return (@:checkr _l ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _append( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode>, _n:stdgo._internal.text.template.parse.Parse_Node.Node):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_ListNode.ListNode> = _l;
        (@:checkr _l ?? throw "null pointer dereference").nodes = ((@:checkr _l ?? throw "null pointer dereference").nodes.__append__(_n));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):stdgo._internal.text.template.parse.Parse_NodeType.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_ListNode.ListNode):stdgo._internal.text.template.parse.Parse_Pos.Pos return @:_5 __self__.position();
}
