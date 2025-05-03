package stdgo._internal.text.template.parse;
@:keep @:allow(stdgo._internal.text.template.parse.Parse.ListNode_asInterface) class ListNode_static_extension {
    @:keep
    @:tdfield
    static public function copy( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo._internal.text.template.parse.Parse_node.Node {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L124"
        return stdgo.Go.asInterface(_l.copyList());
    }
    @:keep
    @:tdfield
    static public function copyList( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L113"
        if (({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L114"
            return _l;
        };
        var _n = (@:checkr _l ?? throw "null pointer dereference")._tr._newList((@:checkr _l ?? throw "null pointer dereference").pos);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L117"
        for (__0 => _elem in (@:checkr _l ?? throw "null pointer dereference").nodes) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L118"
            _n._append(_elem.copy());
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L120"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _writeTo( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _sb:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L107"
        for (__0 => _n in (@:checkr _l ?? throw "null pointer dereference").nodes) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L108"
            _n._writeTo(_sb);
        };
    }
    @:keep
    @:tdfield
    static public function string( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = _l;
        var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L102"
        _l._writeTo((stdgo.Go.setRef(_sb) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L103"
        return (_sb.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _tree( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = _l;
        //"file:///home/runner/.go/go1.21.3/src/text/template/parse/node.go#L97"
        return (@:checkr _l ?? throw "null pointer dereference")._tr;
    }
    @:keep
    @:tdfield
    static public function _append( _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode>, _n:stdgo._internal.text.template.parse.Parse_node.Node):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_listnode.ListNode> = _l;
        (@:checkr _l ?? throw "null pointer dereference").nodes = ((@:checkr _l ?? throw "null pointer dereference").nodes.__append__(_n) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_node.Node>);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.text.template.parse.Parse_listnode.ListNode):stdgo._internal.text.template.parse.Parse_nodetype.NodeType return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function position( __self__:stdgo._internal.text.template.parse.Parse_listnode.ListNode):stdgo._internal.text.template.parse.Parse_pos.Pos return @:_5 __self__.position();
}
