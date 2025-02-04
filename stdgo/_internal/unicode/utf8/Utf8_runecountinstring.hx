package stdgo._internal.unicode.utf8;
function runeCountInString(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        var _ns = (_s.length : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _ns : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    {
                        _n++;
                        continue;
                    };
                };
var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_c : stdgo.GoInt)] : stdgo.GoUInt8);
if (_x == ((241 : stdgo.GoUInt8))) {
                    _i++;
                    {
                        _n++;
                        continue;
                    };
                };
var _size = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
if (((_i + _size : stdgo.GoInt) > _ns : Bool)) {
                    _i++;
                    {
                        _n++;
                        continue;
                    };
                };
var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
{
                    var _c = (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = (_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            _size = (1 : stdgo.GoInt);
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = (_s[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                _size = (1 : stdgo.GoInt);
                            };
                        };
                    };
                };
_i = (_i + (_size) : stdgo.GoInt);
                _n++;
            };
        };
        return _n;
    }
