package stdgo._internal.go.doc;
function _filterTypes(_a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>, _f:stdgo._internal.go.doc.Doc_filter.Filter):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>> {
        var _w = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L78"
        for (__0 => _td in _a) {
            var _n = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L80"
            if (stdgo._internal.go.doc.Doc__matchdecl._matchDecl((@:checkr _td ?? throw "null pointer dereference").decl, _f)) {
                _n = (1 : stdgo.GoInt);
            } else {
                (@:checkr _td ?? throw "null pointer dereference").consts = stdgo._internal.go.doc.Doc__filtervalues._filterValues((@:checkr _td ?? throw "null pointer dereference").consts, _f);
                (@:checkr _td ?? throw "null pointer dereference").vars = stdgo._internal.go.doc.Doc__filtervalues._filterValues((@:checkr _td ?? throw "null pointer dereference").vars, _f);
                (@:checkr _td ?? throw "null pointer dereference").funcs = stdgo._internal.go.doc.Doc__filterfuncs._filterFuncs((@:checkr _td ?? throw "null pointer dereference").funcs, _f);
                (@:checkr _td ?? throw "null pointer dereference").methods = stdgo._internal.go.doc.Doc__filterfuncs._filterFuncs((@:checkr _td ?? throw "null pointer dereference").methods, _f);
                _n = (_n + ((((((@:checkr _td ?? throw "null pointer dereference").consts.length) + ((@:checkr _td ?? throw "null pointer dereference").vars.length) : stdgo.GoInt) + ((@:checkr _td ?? throw "null pointer dereference").funcs.length) : stdgo.GoInt) + ((@:checkr _td ?? throw "null pointer dereference").methods.length) : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L90"
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _a[(_w : stdgo.GoInt)] = _td;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L92"
                _w++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L95"
        return (_a.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>);
    }
