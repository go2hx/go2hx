package stdgo._internal.archive.tar;
function _toASCII(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L33"
        if (stdgo._internal.archive.tar.Tar__isascii._isASCII(_s?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L34"
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L37"
        for (__1 => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L38"
            if (((_c < (128 : stdgo.GoInt32) : Bool) && (_c != (0 : stdgo.GoInt32)) : Bool)) {
                _b = (_b.__append__((_c : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/strconv.go#L42"
        return (_b : stdgo.GoString)?.__copy__();
    }
