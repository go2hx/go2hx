package stdgo._internal.strconv;
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> {
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(_fn?.__copy__(), stdgo._internal.strconv.Strconv__cloneString._cloneString(_str?.__copy__())?.__copy__(), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>);
    }
