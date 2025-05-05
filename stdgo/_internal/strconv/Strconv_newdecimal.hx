package stdgo._internal.strconv;
function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_t_decimal.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>);
        //"file:///home/runner/.go/go1.21.3/src/strconv/internal_test.go#L11"
        _d.assign(_i);
        //"file:///home/runner/.go/go1.21.3/src/strconv/internal_test.go#L12"
        return _d;
    }
