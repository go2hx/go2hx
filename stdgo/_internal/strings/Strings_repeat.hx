package stdgo._internal.strings;
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _count;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return stdgo.Go.str()?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return _s?.__copy__();
            };
        };
        if ((_count < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("strings: negative Repeat count" : stdgo.GoString));
        };
        if (((_s.length) >= ((2147483647 : stdgo.GoInt) / _count : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("strings: Repeat output length overflow" : stdgo.GoString));
        };
        var _n = ((_s.length) * _count : stdgo.GoInt);
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        {};
        var _chunkMax = (_n : stdgo.GoInt);
        if ((_n > (8192 : stdgo.GoInt) : Bool)) {
            _chunkMax = (((8192 : stdgo.GoInt) / (_s.length) : stdgo.GoInt) * (_s.length) : stdgo.GoInt);
            if (_chunkMax == ((0 : stdgo.GoInt))) {
                _chunkMax = (_s.length);
            };
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _b.grow(_n);
        _b.writeString(_s?.__copy__());
        while ((_b.len() < _n : Bool)) {
            var _chunk = (_n - _b.len() : stdgo.GoInt);
            if ((_chunk > _b.len() : Bool)) {
                _chunk = _b.len();
            };
            if ((_chunk > _chunkMax : Bool)) {
                _chunk = _chunkMax;
            };
            _b.writeString(((_b.string() : stdgo.GoString).__slice__(0, _chunk) : stdgo.GoString)?.__copy__());
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }