package stdgo._internal.go.ast;
function _filterParamList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L138"
        if (({
            final value = _fields;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L139"
            return false;
        };
        var _b:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L142"
        for (__0 => _f in (@:checkr _fields ?? throw "null pointer dereference").list) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L143"
            if (stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _f ?? throw "null pointer dereference").type, _filter, _export)) {
                _b = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L147"
        return _b;
    }
