package stdgo._internal.internal.fmtsort;
function _nilCompare(_aVal:stdgo._internal.reflect.Reflect_value.Value, _bVal:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L190"
        if (_aVal.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L191"
            if (_bVal.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L192"
                return { _0 : (0 : stdgo.GoInt), _1 : true };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L194"
            return { _0 : (-1 : stdgo.GoInt), _1 : true };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L196"
        if (_bVal.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L197"
            return { _0 : (1 : stdgo.GoInt), _1 : true };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L199"
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
