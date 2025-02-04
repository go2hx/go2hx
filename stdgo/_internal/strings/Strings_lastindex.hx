package stdgo._internal.strings;
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var _n = (_substr.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return (_s.length);
        } else if (_n == ((1 : stdgo.GoInt))) {
            return stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            if (_substr == (_s)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg_hashstrrev.hashStrRev(_substr?.__copy__()), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _last = ((_s.length) - _n : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= _last : Bool)) {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i--;
            };
        };
        if (((_h == _hashss) && ((_s.__slice__(_last) : stdgo.GoString) == _substr) : Bool)) {
            return _last;
        };
        {
            var _i = (_last - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
_h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
_h = (_h - ((_pow * (_s[(_i + _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
if (((_h == _hashss) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                    return _i;
                };
                _i--;
            };
        };
        return (-1 : stdgo.GoInt);
    }
