package stdgo._internal.strings;
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L230"
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L231"
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L232"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L235"
        return (-1 : stdgo.GoInt);
    }
