package stdgo._internal.strings;
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L975"
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == _c) : Bool)) {
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L978"
        return _s?.__copy__();
    }
