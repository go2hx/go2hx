package stdgo._internal.strings;
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new_:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString {
        if (((_old == _new_) || (_n == (0 : stdgo.GoInt)) : Bool)) {
            return _s?.__copy__();
        };
        {
            var _m = (stdgo._internal.strings.Strings_count.count(_s?.__copy__(), _old?.__copy__()) : stdgo.GoInt);
            if (_m == ((0 : stdgo.GoInt))) {
                return _s?.__copy__();
            } else if (((_n < (0 : stdgo.GoInt) : Bool) || (_m < _n : Bool) : Bool)) {
                _n = _m;
            };
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2 _b.grow(((_s.length) + (_n * (((_new_.length) - (_old.length) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt));
        var _start = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _j = (_start : stdgo.GoInt);
if ((_old.length) == ((0 : stdgo.GoInt))) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_start) : stdgo.GoString).__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                        _j = (_j + (_wid) : stdgo.GoInt);
                    };
                } else {
                    _j = (_j + (stdgo._internal.strings.Strings_index.index((_s.__slice__(_start) : stdgo.GoString).__copy__(), _old.__copy__())) : stdgo.GoInt);
                };
@:check2 _b.writeString((_s.__slice__(_start, _j) : stdgo.GoString).__copy__());
@:check2 _b.writeString(_new_.__copy__());
_start = (_j + (_old.length) : stdgo.GoInt);
                _i++;
            };
        };
        @:check2 _b.writeString((_s.__slice__(_start) : stdgo.GoString)?.__copy__());
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
