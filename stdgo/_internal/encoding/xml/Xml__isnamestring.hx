package stdgo._internal.encoding.xml;
function _isNameString(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1256"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1257"
            return false;
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1260"
        if (((_c == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1261"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1263"
        if (!stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__first._first, _c)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1264"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1266"
        while ((_n < (_s.length) : Bool)) {
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _n = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1269"
            if (((_c == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1270"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1272"
            if ((!stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__first._first, _c) && !stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.encoding.xml.Xml__second._second, _c) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1273"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1276"
        return true;
    }
