package stdgo._internal.strings;
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_a.length) : Bool) && (_i < (_b.length) : Bool) : Bool)) {
            if (_a[(((_a.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] != (_b[((((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
            _i++;
        };
        return _i;
    }
