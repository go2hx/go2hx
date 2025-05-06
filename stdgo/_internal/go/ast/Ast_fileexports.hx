package stdgo._internal.go.ast;
function fileExports(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L28"
        return stdgo._internal.go.ast.Ast__filterfile._filterFile(_src, stdgo._internal.go.ast.Ast__exportfilter._exportFilter, true);
    }
