package stdgo._internal.fmt;
function _hasX(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L765"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L766"
                if (((_s[(_i : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L767"
                    return true;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L770"
        return false;
    }
