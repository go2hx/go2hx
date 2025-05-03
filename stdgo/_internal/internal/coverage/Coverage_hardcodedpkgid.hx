package stdgo._internal.internal.coverage;
function hardCodedPkgID(_pkgpath:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pkid.go#L74"
        for (_k => _p in stdgo._internal.internal.coverage.Coverage__rtpkgs._rtPkgs.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pkid.go#L75"
            if (_p == (_pkgpath)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pkid.go#L76"
                return ((((0 : stdgo.GoInt) - _k : stdgo.GoInt)) - (2 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/pkid.go#L79"
        return (-1 : stdgo.GoInt);
    }
