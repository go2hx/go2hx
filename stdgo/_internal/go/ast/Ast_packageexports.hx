package stdgo._internal.go.ast;
function packageExports(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L38"
        return stdgo._internal.go.ast.Ast__filterpackage._filterPackage(_pkg, stdgo._internal.go.ast.Ast__exportfilter._exportFilter, true);
    }
