package stdgo._internal.strconv;
function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> {
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_numerror.NumError(_fn?.__copy__(), stdgo._internal.strconv.Strconv__clonestring._cloneString(_str?.__copy__())?.__copy__(), stdgo._internal.strconv.Strconv_errrange.errRange) : stdgo._internal.strconv.Strconv_numerror.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>);
    }
