package stdgo._internal.strconv;
function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> {
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(_fn?.__copy__(), stdgo._internal.strconv.Strconv__cloneString._cloneString(_str?.__copy__())?.__copy__(), stdgo._internal.errors.Errors_new_.new_((("invalid bit size " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_bitSize)?.__copy__() : stdgo.GoString)?.__copy__())) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>);
    }
