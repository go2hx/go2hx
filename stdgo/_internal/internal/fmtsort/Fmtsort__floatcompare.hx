package stdgo._internal.internal.fmtsort;
function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L204"
        if (stdgo._internal.internal.fmtsort.Fmtsort__isnan._isNaN(_a)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L206"
            return (-1 : stdgo.GoInt);
        } else if (stdgo._internal.internal.fmtsort.Fmtsort__isnan._isNaN(_b)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L208"
            return (1 : stdgo.GoInt);
        } else if ((_a < _b : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L210"
            return (-1 : stdgo.GoInt);
        } else if ((_a > _b : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L212"
            return (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fmtsort/sort.go#L214"
        return (0 : stdgo.GoInt);
    }
