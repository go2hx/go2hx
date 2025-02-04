package stdgo._internal.strings;
function _lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        {
            var _i = (_s.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString((_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                if (_f(_r) == (_truth)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
