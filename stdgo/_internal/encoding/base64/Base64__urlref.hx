package stdgo._internal.encoding.base64;
function _urlRef(_ref:stdgo.GoString):stdgo.GoString {
        _ref = stdgo._internal.strings.Strings_replaceall.replaceAll(_ref?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString))?.__copy__();
        _ref = stdgo._internal.strings.Strings_replaceall.replaceAll(_ref?.__copy__(), ("/" : stdgo.GoString), ("_" : stdgo.GoString))?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L58"
        return _ref?.__copy__();
    }
