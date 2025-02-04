package stdgo._internal.encoding.base64;
function _urlRef(_ref:stdgo.GoString):stdgo.GoString {
        _ref = stdgo._internal.strings.Strings_replaceall.replaceAll(_ref?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString))?.__copy__();
        _ref = stdgo._internal.strings.Strings_replaceall.replaceAll(_ref?.__copy__(), ("/" : stdgo.GoString), ("_" : stdgo.GoString))?.__copy__();
        return _ref?.__copy__();
    }
