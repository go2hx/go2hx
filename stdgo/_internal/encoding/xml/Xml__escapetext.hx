package stdgo._internal.encoding.xml;
function _escapeText(_w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>, _escapeNewline:Bool):stdgo.Error {
        var _esc:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _last = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1915"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
                _i = (_i + (_width) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1918"
                {
                    var __continue__ = false;
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _r;
                            if (__value__ == ((34 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escquot._escQuot;
                                break;
                            } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escapos._escApos;
                                break;
                            } else if (__value__ == ((38 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escamp._escAmp;
                                break;
                            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__esclt._escLT;
                                break;
                            } else if (__value__ == ((62 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escgt._escGT;
                                break;
                            } else if (__value__ == ((9 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__esctab._escTab;
                                break;
                            } else if (__value__ == ((10 : stdgo.GoInt32))) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1932"
                                if (!_escapeNewline) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1933"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                };
                                _esc = stdgo._internal.encoding.xml.Xml__escnl._escNL;
                                break;
                            } else if (__value__ == ((13 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__esccr._escCR;
                                break;
                            } else {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1939"
                                if ((!stdgo._internal.encoding.xml.Xml__isincharacterrange._isInCharacterRange(_r) || (((_r == (65533 : stdgo.GoInt32)) && (_width == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                                    _esc = stdgo._internal.encoding.xml.Xml__escfffd._escFFFD;
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1941"
                                    break;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1943"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                        };
                        break;
                    };
                    if (__continue__) continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1945"
                {
                    var __tmp__ = _w.write((_s.__slice__(_last, (_i - _width : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1946"
                        return _err;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1948"
                {
                    var __tmp__ = _w.write(_esc), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1949"
                        return _err;
                    };
                };
                _last = _i;
            };
        };
        var __tmp__ = _w.write((_s.__slice__(_last) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1954"
        return _err;
    }
