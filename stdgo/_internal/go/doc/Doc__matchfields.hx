package stdgo._internal.go.doc;
function _matchFields(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _f:stdgo._internal.go.doc.Doc_filter.Filter):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L12"
        if (({
            final value = _fields;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L13"
            for (__0 => _field in (@:checkr _fields ?? throw "null pointer dereference").list) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L14"
                for (__1 => _name in (@:checkr _field ?? throw "null pointer dereference").names) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L15"
                    if (_f((@:checkr _name ?? throw "null pointer dereference").name?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L16"
                        return true;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L21"
        return false;
    }
