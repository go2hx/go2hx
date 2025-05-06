package stdgo._internal.go.doc;
function _sortingName(_d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L847"
        if (((@:checkr _d ?? throw "null pointer dereference").specs.length) == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L848"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : false };
                }, _s = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L849"
                    return (@:checkr (@:checkr _s ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").name?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L852"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
