package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.T_visitor_asInterface) class T_visitor_static_extension {
    @:keep
    @:tdfield
    static public function visit( _v:stdgo._internal.go.printer.Printer_t_visitor.T_visitor, _n:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor {
        @:recv var _v:stdgo._internal.go.printer.Printer_t_visitor.T_visitor = _v;
        var _w = (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L338"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
            }, _ident = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L339"
                _v.__send__(_ident);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L341"
        return _w = stdgo.Go.asInterface(_v);
    }
}
