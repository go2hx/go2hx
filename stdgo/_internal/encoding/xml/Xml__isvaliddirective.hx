package stdgo._internal.encoding.xml;
function _isValidDirective(_dir:stdgo._internal.encoding.xml.Xml_directive.Directive):Bool {
        var _depth:stdgo.GoInt = (0 : stdgo.GoInt), _inquote:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _incomment:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L273"
        for (_i => _c in _dir) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L274"
            if (_incomment) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L276"
                if (_c == ((62 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L277"
                    {
                        var _n = (((1 : stdgo.GoInt) + _i : stdgo.GoInt) - (stdgo._internal.encoding.xml.Xml__endcomment._endComment.length) : stdgo.GoInt);
                        if (((_n >= (0 : stdgo.GoInt) : Bool) && stdgo._internal.bytes.Bytes_equal.equal((_dir.__slice__(_n, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.encoding.xml.Xml_directive.Directive), stdgo._internal.encoding.xml.Xml__endcomment._endComment) : Bool)) {
                            _incomment = false;
                        };
                    };
                };
            } else if (_inquote != ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L283"
                if (_c == (_inquote)) {
                    _inquote = (0 : stdgo.GoUInt8);
                };
            } else if (((_c == (39 : stdgo.GoUInt8)) || (_c == (34 : stdgo.GoUInt8)) : Bool)) {
                _inquote = _c;
            } else if (_c == ((60 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L290"
                if ((((_i + (stdgo._internal.encoding.xml.Xml__begcomment._begComment.length) : stdgo.GoInt) < (_dir.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal((_dir.__slice__(_i, (_i + (stdgo._internal.encoding.xml.Xml__begcomment._begComment.length) : stdgo.GoInt)) : stdgo._internal.encoding.xml.Xml_directive.Directive), stdgo._internal.encoding.xml.Xml__begcomment._begComment) : Bool)) {
                    _incomment = true;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L293"
                    _depth++;
                };
            } else if (_c == ((62 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L296"
                if (_depth == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L297"
                    return false;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L299"
                _depth--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L302"
        return ((_depth == ((0 : stdgo.GoInt)) && _inquote == ((0 : stdgo.GoUInt8)) : Bool) && !_incomment : Bool);
    }
