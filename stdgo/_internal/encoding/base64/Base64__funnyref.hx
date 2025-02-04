package stdgo._internal.encoding.base64;
function _funnyRef(_ref:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_ref?.__copy__(), ("=" : stdgo.GoString), ("@" : stdgo.GoString))?.__copy__();
    }
