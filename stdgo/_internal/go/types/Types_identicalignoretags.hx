package stdgo._internal.go.types;
function identicalIgnoreTags(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var _c:stdgo._internal.go.types.Types_t_comparer.T_comparer = ({} : stdgo._internal.go.types.Types_t_comparer.T_comparer);
        _c._ignoreTags = true;
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L502"
        return _c._identical(_x, _y, null);
    }
