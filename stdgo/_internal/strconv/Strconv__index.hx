package stdgo._internal.strconv;
function _index(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L12"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L13"
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    //"file:///home/runner/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L14"
                    return _i;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L17"
        return (-1 : stdgo.GoInt);
    }
