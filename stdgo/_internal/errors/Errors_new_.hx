package stdgo._internal.errors;
function new_(_text:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/errors/errors.go#L62"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.errors.Errors_t_errorstring.T_errorString(_text?.__copy__()) : stdgo._internal.errors.Errors_t_errorstring.T_errorString)) : stdgo.Ref<stdgo._internal.errors.Errors_t_errorstring.T_errorString>));
    }
