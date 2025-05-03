package stdgo._internal.strconv;
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> {
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L53"
        return (stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_numerror.NumError(_fn?.__copy__(), stdgo._internal.strconv.Strconv__clonestring._cloneString(_str?.__copy__())?.__copy__(), stdgo._internal.strconv.Strconv_errsyntax.errSyntax) : stdgo._internal.strconv.Strconv_numerror.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>);
    }
