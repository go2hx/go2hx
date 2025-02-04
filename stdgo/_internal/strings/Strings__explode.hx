package stdgo._internal.strings;
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _l = (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s?.__copy__()) : stdgo.GoInt);
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n > _l : Bool) : Bool)) {
            _n = _l;
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
_a[(_i : stdgo.GoInt)] = (_s.__slice__(0, _size) : stdgo.GoString).__copy__();
_s = (_s.__slice__(_size) : stdgo.GoString).__copy__();
                _i++;
            };
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _a[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _s?.__copy__();
        };
        return _a;
    }
