package stdgo._internal.go.doc;
function _hasIota(_s:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        var _has = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L494"
        stdgo._internal.go.ast.Ast_inspect.inspect(_s, function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L497"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _id = __tmp__._0, _ok = __tmp__._1;
                if (((_ok && (@:checkr _id ?? throw "null pointer dereference").name == (("iota" : stdgo.GoString)) : Bool) && ({
                    final value = (@:checkr _id ?? throw "null pointer dereference").obj;
                    (value == null || (value : Dynamic).__nil__);
                }) : Bool)) {
                    _has = true;
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L499"
                    return false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L501"
            return true;
        });
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L503"
        return _has;
    }
