package stdgo._internal.go.ast;
function testIsDirective(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast_test.go#L77"
        for (__0 => _tt in stdgo._internal.go.ast.Ast__isdirectivetests._isDirectiveTests) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast_test.go#L78"
            {
                var _ok = (stdgo._internal.go.ast.Ast__isdirective._isDirective(_tt._in?.__copy__()) : Bool);
                if (_ok != (_tt._ok)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/ast_test.go#L79"
                    _t.errorf(("isDirective(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
                };
            };
        };
    }
