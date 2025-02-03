package stdgo._internal.strings;
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if (_sep == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.strings.Strings__explode._explode(_s?.__copy__(), _n);
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = (stdgo._internal.strings.Strings_count.count(_s?.__copy__(), _sep?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_n > ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        _n--;
        var _i = (0 : stdgo.GoInt);
        while ((_i < _n : Bool)) {
            var _m = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _sep?.__copy__()) : stdgo.GoInt);
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                break;
            };
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, (_m + _sepSave : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _s = (_s.__slice__((_m + (_sep.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _i++;
        };
        _a[(_i : stdgo.GoInt)] = _s?.__copy__();
        return (_a.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
    }
