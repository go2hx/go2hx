package stdgo._internal.strings;
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L92"
        while (((_i < (_a.length) : Bool) && (_i < (_b.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L93"
            if (_a[(((_a.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] != (_b[((((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L94"
                break;
            };
            _i++;
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/search.go#L97"
        return _i;
    }
