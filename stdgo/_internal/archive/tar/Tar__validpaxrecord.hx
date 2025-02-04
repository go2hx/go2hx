package stdgo._internal.archive.tar;
function _validPAXRecord(_k:stdgo.GoString, _v:stdgo.GoString):Bool {
        if (((_k == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_k?.__copy__(), ("=" : stdgo.GoString)) : Bool)) {
            return false;
        };
        {
            final __value__ = _k;
            if (__value__ == (("path" : stdgo.GoString)) || __value__ == (("linkpath" : stdgo.GoString)) || __value__ == (("uname" : stdgo.GoString)) || __value__ == (("gname" : stdgo.GoString))) {
                return !stdgo._internal.archive.tar.Tar__hasnul._hasNUL(_v?.__copy__());
            } else {
                return !stdgo._internal.archive.tar.Tar__hasnul._hasNUL(_k?.__copy__());
            };
        };
    }
