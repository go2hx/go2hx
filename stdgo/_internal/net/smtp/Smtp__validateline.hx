package stdgo._internal.net.smtp;
function _validateLine(_line:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L428"
        if (stdgo._internal.strings.Strings_containsany.containsAny(_line?.__copy__(), ("\n\r" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L429"
            return stdgo._internal.errors.Errors_new_.new_(("smtp: A line must not contain CR or LF" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/smtp/smtp.go#L431"
        return (null : stdgo.Error);
    }
