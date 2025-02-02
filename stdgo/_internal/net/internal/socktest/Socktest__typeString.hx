package stdgo._internal.net.internal.socktest;
function _typeString(_sotype:stdgo.GoInt):stdgo.GoString {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = (_sotype & (255 : stdgo.GoInt) : stdgo.GoInt);
            if (__value__ == ((1 : stdgo.GoInt))) {
                _s = ("stream" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _s = ("datagram" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                _s = ("raw" : stdgo.GoString);
            } else if (__value__ == ((4 : stdgo.GoInt))) {
                _s = ("seqpacket" : stdgo.GoString);
            } else {
                _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface((_sotype & (255 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__();
            };
        };
        {
            var _flags = ((_sotype : stdgo.GoUInt) & (-256u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if (_flags != ((0u32 : stdgo.GoUInt))) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("|%#x" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_flags)))?.__copy__() : stdgo.GoString);
            };
        };
        return _s?.__copy__();
    }
