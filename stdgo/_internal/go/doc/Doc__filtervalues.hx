package stdgo._internal.go.doc;
function _filterValues(_a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, _f:stdgo._internal.go.doc.Doc_filter.Filter):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> {
        var _w = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L56"
        for (__0 => _vd in _a) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L57"
            if (stdgo._internal.go.doc.Doc__matchdecl._matchDecl((@:checkr _vd ?? throw "null pointer dereference").decl, _f)) {
                _a[(_w : stdgo.GoInt)] = _vd;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L59"
                _w++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/filter.go#L62"
        return (_a.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    }
