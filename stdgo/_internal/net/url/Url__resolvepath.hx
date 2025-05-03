package stdgo._internal.net.url;
function _resolvePath(_base:stdgo.GoString, _ref:stdgo.GoString):stdgo.GoString {
        var _full:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L994"
        if (_ref == ((stdgo.Go.str() : stdgo.GoString))) {
            _full = _base?.__copy__();
        } else if (_ref[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_base?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            _full = ((_base.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) + _ref?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _full = _ref?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1002"
        if (_full == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1003"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _elem:stdgo.GoString = ("" : stdgo.GoString), _dst:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _first = (true : Bool);
        var _remaining = (_full?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1013"
        _dst.writeByte((47 : stdgo.GoUInt8));
        var _found = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1015"
        while (_found) {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_remaining?.__copy__(), ("/" : stdgo.GoString));
                _elem = @:tmpset0 __tmp__._0?.__copy__();
                _remaining = @:tmpset0 __tmp__._1?.__copy__();
                _found = @:tmpset0 __tmp__._2;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1017"
            if (_elem == (("." : stdgo.GoString))) {
                _first = false;
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1020"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1023"
            if (_elem == ((".." : stdgo.GoString))) {
                var _str = (((_dst.string() : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _index = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_str?.__copy__(), (47 : stdgo.GoUInt8)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1028"
                _dst.reset();
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1029"
                _dst.writeByte((47 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1030"
                if (_index == ((-1 : stdgo.GoInt))) {
                    _first = true;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1033"
                    _dst.writeString((_str.__slice__(0, _index) : stdgo.GoString)?.__copy__());
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1036"
                if (!_first) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1037"
                    _dst.writeByte((47 : stdgo.GoUInt8));
                };
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1039"
                _dst.writeString(_elem?.__copy__());
                _first = false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1044"
        if (((_elem == ("." : stdgo.GoString)) || (_elem == (".." : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1045"
            _dst.writeByte((47 : stdgo.GoUInt8));
        };
        var _r = ((_dst.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1050"
        if ((((_r.length) > (1 : stdgo.GoInt) : Bool) && (_r[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _r = (_r.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1053"
        return _r?.__copy__();
    }
