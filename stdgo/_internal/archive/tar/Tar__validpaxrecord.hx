package stdgo._internal.archive.tar;
function _validPAXRecord(_k:stdgo.GoString, _v:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L318"
        if (((_k == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_k?.__copy__(), ("=" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L319"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L321"
        {
            final __value__ = _k;
            if (__value__ == (("path" : stdgo.GoString)) || __value__ == (("linkpath" : stdgo.GoString)) || __value__ == (("uname" : stdgo.GoString)) || __value__ == (("gname" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L323"
                return !stdgo._internal.archive.tar.Tar__hasnul._hasNUL(_v?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L325"
                return !stdgo._internal.archive.tar.Tar__hasnul._hasNUL(_k?.__copy__());
            };
        };
    }
