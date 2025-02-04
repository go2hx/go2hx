package stdgo._internal.internal.coverage;
function hardCodedPkgID(_pkgpath:stdgo.GoString):stdgo.GoInt {
        for (_k => _p in stdgo._internal.internal.coverage.Coverage__rtpkgs._rtPkgs) {
            if (_p == (_pkgpath)) {
                return ((((0 : stdgo.GoInt) - _k : stdgo.GoInt)) - (2 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
