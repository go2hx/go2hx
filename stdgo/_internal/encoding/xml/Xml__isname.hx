package stdgo._internal.encoding.xml;
function _isName(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1232"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1233"
            return false;
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s), _c:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1236"
        if (((_c == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1237"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1239"
        if (!stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__first._first, _c)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1240"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1242"
        while ((_n < (_s.length) : Bool)) {
            _s = (_s.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                _c = @:tmpset0 __tmp__._0;
                _n = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1245"
            if (((_c == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1246"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1248"
            if ((!stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__first._first, _c) && !stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__second._second, _c) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1249"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1252"
        return true;
    }
