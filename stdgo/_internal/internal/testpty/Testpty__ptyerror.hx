package stdgo._internal.internal.testpty;
function _ptyError(_name:stdgo.GoString, _err:stdgo.Error):stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError> {
        return (stdgo.Go.setRef((new stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError(_name?.__copy__(), _err.error()?.__copy__(), _err) : stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError)) : stdgo.Ref<stdgo._internal.internal.testpty.Testpty_ptyerror.PtyError>);
    }
