package stdgo._internal.net.http;
function _hexEscapeNonASCII(_s:stdgo.GoString):stdgo.GoString {
        var _newLen = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if ((_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool)) {
                    _newLen = (_newLen + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    _newLen++;
                };
                _i++;
            };
        };
        if (_newLen == ((_s.length))) {
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _newLen).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _pos:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if ((_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool)) {
                    if ((_pos < _i : Bool)) {
                        _b = (_b.__append__(...((_s.__slice__(_pos, _i) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                    };
                    _b = (_b.__append__((37 : stdgo.GoUInt8)));
                    _b = stdgo._internal.strconv.Strconv_appendInt.appendInt(_b, (_s[(_i : stdgo.GoInt)] : stdgo.GoInt64), (16 : stdgo.GoInt));
                    _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
        };
        if ((_pos < (_s.length) : Bool)) {
            _b = (_b.__append__(...((_s.__slice__(_pos) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
