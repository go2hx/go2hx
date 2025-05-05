package stdgo._internal.strings;
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L927"
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == _c) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L930"
        return _s?.__copy__();
    }
