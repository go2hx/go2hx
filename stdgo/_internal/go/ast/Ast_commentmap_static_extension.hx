package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.CommentMap_asInterface) class CommentMap_static_extension {
    @:keep
    @:tdfield
    static public function string( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap):stdgo.GoString {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _nodes:stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L310"
        for (_node => _ in _cmap) {
            _nodes = (_nodes.__append__(_node) : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L313"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_nodes : stdgo._internal.go.ast.Ast_t_byinterval.T_byInterval)));
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L316"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("CommentMap {" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L317"
        for (__0 => _node in _nodes) {
            var _comment = (_cmap[_node] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L321"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_node) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _ident = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _s = (@:checkr _ident ?? throw "null pointer dereference").name?.__copy__();
                } else {
                    _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_node))?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L326"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("\t%p  %20s:  %s\n" : stdgo.GoString), stdgo.Go.toInterface(_node), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo._internal.go.ast.Ast__summary._summary(_comment)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L328"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("}" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L329"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function comments( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((0 : stdgo.GoInt).toBasic(), (_cmap.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L264"
        for (__0 => _e in _cmap) {
            _list = (_list.__append__(...(_e : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L267"
        stdgo._internal.go.ast.Ast__sortcomments._sortComments(_list);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L268"
        return _list;
    }
    @:keep
    @:tdfield
    static public function filter( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap, _node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_commentmap.CommentMap {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _umap = ((({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_node.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_node.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>) : stdgo._internal.go.ast.Ast_commentmap.CommentMap) : stdgo._internal.go.ast.Ast_commentmap.CommentMap);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L251"
        stdgo._internal.go.ast.Ast_inspect.inspect(_node, function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L252"
            {
                var _g = (_cmap[_n] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
                if (((_g.length) > (0 : stdgo.GoInt) : Bool)) {
                    _umap[_n] = _g;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L255"
            return true;
        });
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L257"
        return _umap;
    }
    @:keep
    @:tdfield
    static public function update( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap, _old:stdgo._internal.go.ast.Ast_node.Node, _new_:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_node.Node {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L239"
        {
            var _list = (_cmap[_old] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
            if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L240"
                if (_cmap != null) _cmap.__remove__(_old);
                _cmap[_new_] = ((_cmap[_new_] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>)).__append__(...(_list : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L243"
        return _new_;
    }
    @:keep
    @:tdfield
    static public function _addComment( _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap, _n:stdgo._internal.go.ast.Ast_node.Node, _c:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void {
        @:recv var _cmap:stdgo._internal.go.ast.Ast_commentmap.CommentMap = _cmap;
        var _list = (_cmap[_n] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L38"
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        } else {
            _list = (_list.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        _cmap[_n] = _list;
    }
}
