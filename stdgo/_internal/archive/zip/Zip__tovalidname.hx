package stdgo._internal.archive.zip;
function _toValidName(_name:stdgo.GoString):stdgo.GoString {
        _name = stdgo._internal.strings.Strings_replaceall.replaceAll(_name?.__copy__(), ("\\" : stdgo.GoString), ("/" : stdgo.GoString))?.__copy__();
        var _p = (stdgo._internal.path.Path_clean.clean(_name?.__copy__())?.__copy__() : stdgo.GoString);
        _p = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_p?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        while (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_p?.__copy__(), ("../" : stdgo.GoString))) {
            _p = (_p.__slice__(((("../" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
        };
        return _p?.__copy__();
    }
