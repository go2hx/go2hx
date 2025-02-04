package stdgo._internal.internal.fmtsort;
function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt {
        if (stdgo._internal.internal.fmtsort.Fmtsort__isnan._isNaN(_a)) {
            return (-1 : stdgo.GoInt);
        } else if (stdgo._internal.internal.fmtsort.Fmtsort__isnan._isNaN(_b)) {
            return (1 : stdgo.GoInt);
        } else if ((_a < _b : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_a > _b : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
