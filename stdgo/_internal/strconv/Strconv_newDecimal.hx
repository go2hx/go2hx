package stdgo._internal.strconv;
function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal> {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.strconv.Strconv_T_decimal.T_decimal)) : stdgo.Ref<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>);
        _d.assign(_i);
        return _d;
    }
