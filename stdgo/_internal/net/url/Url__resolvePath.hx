package stdgo._internal.net.url;
function _resolvePath(_base:stdgo.GoString, _ref:stdgo.GoString):stdgo.GoString {
        var _full:stdgo.GoString = ("" : stdgo.GoString);
        if (_ref == (stdgo.Go.str())) {
            _full = _base?.__copy__();
        } else if (_ref[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
            var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_base?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            _full = ((_base.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) + _ref?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _full = _ref?.__copy__();
        };
        if (_full == (stdgo.Go.str())) {
            return stdgo.Go.str()?.__copy__();
        };
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
var _dst = __1, _elem = __0;
        var _first = (true : Bool);
        var _remaining = (_full?.__copy__() : stdgo.GoString);
        _dst.writeByte((47 : stdgo.GoUInt8));
        var _found = (true : Bool);
        while (_found) {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_remaining?.__copy__(), ("/" : stdgo.GoString));
                _elem = __tmp__._0?.__copy__();
                _remaining = __tmp__._1?.__copy__();
                _found = __tmp__._2;
            };
            if (_elem == (("." : stdgo.GoString))) {
                _first = false;
                continue;
            };
            if (_elem == ((".." : stdgo.GoString))) {
                var _str = (((_dst.string() : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _index = (stdgo._internal.strings.Strings_lastIndexByte.lastIndexByte(_str?.__copy__(), (47 : stdgo.GoUInt8)) : stdgo.GoInt);
                _dst.reset();
                _dst.writeByte((47 : stdgo.GoUInt8));
                if (_index == ((-1 : stdgo.GoInt))) {
                    _first = true;
                } else {
                    _dst.writeString((_str.__slice__(0, _index) : stdgo.GoString)?.__copy__());
                };
            } else {
                if (!_first) {
                    _dst.writeByte((47 : stdgo.GoUInt8));
                };
                _dst.writeString(_elem?.__copy__());
                _first = false;
            };
        };
        if (((_elem == ("." : stdgo.GoString)) || (_elem == (".." : stdgo.GoString)) : Bool)) {
            _dst.writeByte((47 : stdgo.GoUInt8));
        };
        var _r = ((_dst.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((((_r.length) > (1 : stdgo.GoInt) : Bool) && (_r[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _r = (_r.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _r?.__copy__();
    }