package stdgo._internal.encoding.xml;
function _isName(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s), _c:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_c == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        if (!stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__first._first, _c)) {
            return false;
        };
        while ((_n < (_s.length) : Bool)) {
            _s = (_s.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                _c = @:tmpset0 __tmp__._0;
                _n = @:tmpset0 __tmp__._1;
            };
            if (((_c == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
                return false;
            };
            if ((!stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__first._first, _c) && !stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__second._second, _c) : Bool)) {
                return false;
            };
        };
        return true;
    }
