package stdgo._internal.net.textproto;
function trimString(_s:stdgo.GoString):stdgo.GoString {
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isasciispace._isASCIISpace(_s[(0 : stdgo.GoInt)]) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.net.textproto.Textproto__isasciispace._isASCIISpace(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
