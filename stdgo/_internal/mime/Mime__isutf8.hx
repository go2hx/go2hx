package stdgo._internal.mime;
function _isUTF8(_charset:stdgo.GoString):Bool {
        return stdgo._internal.strings.Strings_equalfold.equalFold(_charset?.__copy__(), ("UTF-8" : stdgo.GoString));
    }
