package stdgo._internal.net.smtp;
function _validateLine(_line:stdgo.GoString):stdgo.Error {
        if (stdgo._internal.strings.Strings_containsany.containsAny(_line?.__copy__(), ("\n\r" : stdgo.GoString))) {
            return stdgo._internal.errors.Errors_new_.new_(("smtp: A line must not contain CR or LF" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
