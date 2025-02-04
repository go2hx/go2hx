package stdgo._internal.encoding.xml;
function _isValidDirective(_dir:stdgo._internal.encoding.xml.Xml_directive.Directive):Bool {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __2:Bool = false;
var _incomment = __2, _inquote = __1, _depth = __0;
        for (_i => _c in _dir) {
            if (_incomment) {
                if (_c == ((62 : stdgo.GoUInt8))) {
                    {
                        var _n = (((1 : stdgo.GoInt) + _i : stdgo.GoInt) - (stdgo._internal.encoding.xml.Xml__endcomment._endComment.length) : stdgo.GoInt);
                        if (((_n >= (0 : stdgo.GoInt) : Bool) && stdgo._internal.bytes.Bytes_equal.equal((_dir.__slice__(_n, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.encoding.xml.Xml_directive.Directive), stdgo._internal.encoding.xml.Xml__endcomment._endComment) : Bool)) {
                            _incomment = false;
                        };
                    };
                };
            } else if (_inquote != ((0 : stdgo.GoUInt8))) {
                if (_c == (_inquote)) {
                    _inquote = (0 : stdgo.GoUInt8);
                };
            } else if (((_c == (39 : stdgo.GoUInt8)) || (_c == (34 : stdgo.GoUInt8)) : Bool)) {
                _inquote = _c;
            } else if (_c == ((60 : stdgo.GoUInt8))) {
                if ((((_i + (stdgo._internal.encoding.xml.Xml__begcomment._begComment.length) : stdgo.GoInt) < (_dir.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal((_dir.__slice__(_i, (_i + (stdgo._internal.encoding.xml.Xml__begcomment._begComment.length) : stdgo.GoInt)) : stdgo._internal.encoding.xml.Xml_directive.Directive), stdgo._internal.encoding.xml.Xml__begcomment._begComment) : Bool)) {
                    _incomment = true;
                } else {
                    _depth++;
                };
            } else if (_c == ((62 : stdgo.GoUInt8))) {
                if (_depth == ((0 : stdgo.GoInt))) {
                    return false;
                };
                _depth--;
            };
        };
        return ((_depth == ((0 : stdgo.GoInt)) && _inquote == ((0 : stdgo.GoUInt8)) : Bool) && !_incomment : Bool);
    }
