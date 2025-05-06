package stdgo._internal.go.doc;
function _lookupTypeParam(_name:stdgo.GoString, _tparams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L475"
        if (({
            final value = _tparams;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L476"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L478"
        for (__0 => _field in (@:checkr _tparams ?? throw "null pointer dereference").list) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L479"
            for (__1 => _id in (@:checkr _field ?? throw "null pointer dereference").names) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L480"
                if ((@:checkr _id ?? throw "null pointer dereference").name == (_name)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L481"
                    return _id;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L485"
        return null;
    }
