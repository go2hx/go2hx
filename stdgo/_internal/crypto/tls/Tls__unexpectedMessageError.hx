package stdgo._internal.crypto.tls;
function _unexpectedMessageError(_wanted:stdgo.AnyInterface, _got:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: received unexpected handshake message of type %T when waiting for %T" : stdgo.GoString), _got, _wanted);
    }
