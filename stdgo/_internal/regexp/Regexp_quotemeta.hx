package stdgo._internal.regexp;
function quoteMeta(_s:stdgo.GoString):stdgo.GoString {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (stdgo._internal.regexp.Regexp__special._special(_s[(_i : stdgo.GoInt)])) {
                    break;
                };
                _i++;
            };
        };
        if ((_i >= (_s.length) : Bool)) {
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((((2 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) - _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.__copyTo__((_s.__slice__(0, _i) : stdgo.GoString));
        var _j = (_i : stdgo.GoInt);
        while ((_i < (_s.length) : Bool)) {
            if (stdgo._internal.regexp.Regexp__special._special(_s[(_i : stdgo.GoInt)])) {
                _b[(_j : stdgo.GoInt)] = (92 : stdgo.GoUInt8);
                _j++;
            };
_b[(_j : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
_j++;
            _i++;
        };
        return ((_b.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
