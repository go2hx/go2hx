package stdgo._internal.strings;
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        var _i = (0 : stdgo.GoInt);
        stdgo.Go.cfor(((_i < (_a.length) : Bool) && (_i < (_b.length) : Bool) : Bool), _i++, {
            if (_a[(((_a.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] != (_b[((((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
        });
        return _i;
    }
