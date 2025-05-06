package stdgo._internal.text.scanner;
@:keep @:allow(stdgo._internal.text.scanner.Scanner.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    @:tdfield
    static public function tokenText( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L771"
        if (((@:checkr _s ?? throw "null pointer dereference")._tokPos < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L773"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L776"
        if (((@:checkr _s ?? throw "null pointer dereference")._tokEnd < (@:checkr _s ?? throw "null pointer dereference")._tokPos : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._tokEnd = (@:checkr _s ?? throw "null pointer dereference")._tokPos;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L782"
        if ((@:checkr _s ?? throw "null pointer dereference")._tokBuf.len() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L784"
            return (((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__((@:checkr _s ?? throw "null pointer dereference")._tokPos, (@:checkr _s ?? throw "null pointer dereference")._tokEnd) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L789"
        (@:checkr _s ?? throw "null pointer dereference")._tokBuf.write(((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__((@:checkr _s ?? throw "null pointer dereference")._tokPos, (@:checkr _s ?? throw "null pointer dereference")._tokEnd) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _s ?? throw "null pointer dereference")._tokPos = (@:checkr _s ?? throw "null pointer dereference")._tokEnd;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L791"
        return ((@:checkr _s ?? throw "null pointer dereference")._tokBuf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):stdgo._internal.text.scanner.Scanner_position.Position {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _pos = ({} : stdgo._internal.text.scanner.Scanner_position.Position);
        _pos.filename = (@:checkr _s ?? throw "null pointer dereference").position.filename?.__copy__();
        _pos.offset = (((@:checkr _s ?? throw "null pointer dereference")._srcBufOffset + (@:checkr _s ?? throw "null pointer dereference")._srcPos : stdgo.GoInt) - (@:checkr _s ?? throw "null pointer dereference")._lastCharLen : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L751"
        if (((@:checkr _s ?? throw "null pointer dereference")._column > (0 : stdgo.GoInt) : Bool)) {
            _pos.line = (@:checkr _s ?? throw "null pointer dereference")._line;
            _pos.column = (@:checkr _s ?? throw "null pointer dereference")._column;
        } else if (((@:checkr _s ?? throw "null pointer dereference")._lastLineLen > (0 : stdgo.GoInt) : Bool)) {
            _pos.line = ((@:checkr _s ?? throw "null pointer dereference")._line - (1 : stdgo.GoInt) : stdgo.GoInt);
            _pos.column = (@:checkr _s ?? throw "null pointer dereference")._lastLineLen;
        } else {
            _pos.line = (1 : stdgo.GoInt);
            _pos.column = (1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L765"
        return _pos;
    }
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _tok_1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _redoBreak = false;
        var _ch_0:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _ch_0 = _s.peek();
                    (@:checkr _s ?? throw "null pointer dereference")._tokPos = (-1 : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference").position.line = (0 : stdgo.GoInt);
                    _gotoNext = 4189266i64;
                } else if (__value__ == (4189266i64)) {
                    0i64;
                    _redoBreak = false;
                    _gotoNext = 4189294i64;
                } else if (__value__ == (4189294i64)) {
                    //"file://#L0"
                    if (!_redoBreak && (((@:checkr _s ?? throw "null pointer dereference").whitespace & (((1i64 : stdgo.GoUInt64) << (_ch_0 : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) != (0i64 : stdgo.GoUInt64))) {
                        _gotoNext = 4189330i64;
                    } else {
                        _gotoNext = 4189385i64;
                    };
                } else if (__value__ == (4189330i64)) {
                    _ch_0 = _s._next();
                    _gotoNext = 4189294i64;
                } else if (__value__ == (4189385i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L660"
                    (@:checkr _s ?? throw "null pointer dereference")._tokBuf.reset();
                    (@:checkr _s ?? throw "null pointer dereference")._tokPos = ((@:checkr _s ?? throw "null pointer dereference")._srcPos - (@:checkr _s ?? throw "null pointer dereference")._lastCharLen : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference").position.offset = ((@:checkr _s ?? throw "null pointer dereference")._srcBufOffset + (@:checkr _s ?? throw "null pointer dereference")._tokPos : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L666"
                    if (((@:checkr _s ?? throw "null pointer dereference")._column > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4189582i64;
                    } else {
                        _gotoNext = 4189680i64;
                    };
                } else if (__value__ == (4189582i64)) {
                    (@:checkr _s ?? throw "null pointer dereference").position.line = (@:checkr _s ?? throw "null pointer dereference")._line;
                    (@:checkr _s ?? throw "null pointer dereference").position.column = (@:checkr _s ?? throw "null pointer dereference")._column;
                    _gotoNext = 4189891i64;
                } else if (__value__ == (4189680i64)) {
                    _gotoNext = 4189680i64;
                    (@:checkr _s ?? throw "null pointer dereference").position.line = ((@:checkr _s ?? throw "null pointer dereference")._line - (1 : stdgo.GoInt) : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference").position.column = (@:checkr _s ?? throw "null pointer dereference")._lastLineLen;
                    0i64;
                    _gotoNext = 4189891i64;
                } else if (__value__ == (4189891i64)) {
                    _tok_1 = _ch_0;
                    _gotoNext = 4189902i64;
                } else if (__value__ == (4189902i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L680"
                    if (_s._isIdentRune(_ch_0, (0 : stdgo.GoInt))) {
                        _gotoNext = 4189912i64;
                    } else if (stdgo._internal.text.scanner.Scanner__isdecimal._isDecimal(_ch_0)) {
                        _gotoNext = 4190044i64;
                    } else {
                        _gotoNext = 4190175i64;
                    };
                } else if (__value__ == (4189912i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L682"
                    if (((@:checkr _s ?? throw "null pointer dereference").mode & (4u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        _gotoNext = 4189967i64;
                    } else {
                        _gotoNext = 4190020i64;
                    };
                } else if (__value__ == (4189967i64)) {
                    _tok_1 = (-2 : stdgo.GoInt32);
                    _ch_0 = _s._scanIdentifier();
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190020i64)) {
                    _gotoNext = 4190020i64;
                    _ch_0 = _s._next();
                    0i64;
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190044i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L689"
                    if (((@:checkr _s ?? throw "null pointer dereference").mode & (24u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        _gotoNext = 4190103i64;
                    } else {
                        _gotoNext = 4190151i64;
                    };
                } else if (__value__ == (4190103i64)) {
                    {
                        var __tmp__ = _s._scanNumber(_ch_0, false);
                        _tok_1 = @:tmpset0 __tmp__._0;
                        _ch_0 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190151i64)) {
                    _gotoNext = 4190151i64;
                    _ch_0 = _s._next();
                    0i64;
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190175i64)) {
                    _gotoNext = 4190186i64;
                } else if (__value__ == (4190186i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L695"
                    {
                        final __value__ = _ch_0;
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 4190200i64;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 4190221i64;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 4190326i64;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 4190423i64;
                        } else if (__value__ == ((47 : stdgo.GoInt32))) {
                            _gotoNext = 4190542i64;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 4190812i64;
                        } else {
                            _gotoNext = 4190923i64;
                        };
                    };
                } else if (__value__ == (4190200i64)) {
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190221i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L699"
                    if (((@:checkr _s ?? throw "null pointer dereference").mode & (64u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        _gotoNext = 4190261i64;
                    } else {
                        _gotoNext = 4190310i64;
                    };
                } else if (__value__ == (4190261i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L700"
                    _s._scanString((34 : stdgo.GoInt32));
                    _tok_1 = (-6 : stdgo.GoInt32);
                    _gotoNext = 4190310i64;
                } else if (__value__ == (4190310i64)) {
                    _ch_0 = _s._next();
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190326i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L705"
                    if (((@:checkr _s ?? throw "null pointer dereference").mode & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        _gotoNext = 4190365i64;
                    } else {
                        _gotoNext = 4190407i64;
                    };
                } else if (__value__ == (4190365i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L706"
                    _s._scanChar();
                    _tok_1 = (-5 : stdgo.GoInt32);
                    _gotoNext = 4190407i64;
                } else if (__value__ == (4190407i64)) {
                    _ch_0 = _s._next();
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190423i64)) {
                    _ch_0 = _s._next();
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L712"
                    if ((stdgo._internal.text.scanner.Scanner__isdecimal._isDecimal(_ch_0) && (((@:checkr _s ?? throw "null pointer dereference").mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                        _gotoNext = 4190496i64;
                    } else {
                        _gotoNext = 4190980i64;
                    };
                } else if (__value__ == (4190496i64)) {
                    {
                        var __tmp__ = _s._scanNumber(_ch_0, true);
                        _tok_1 = @:tmpset0 __tmp__._0;
                        _ch_0 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190542i64)) {
                    _ch_0 = _s._next();
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L717"
                    if (((((_ch_0 == (47 : stdgo.GoInt32)) || (_ch_0 == (42 : stdgo.GoInt32)) : Bool)) && (((@:checkr _s ?? throw "null pointer dereference").mode & (256u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                        _gotoNext = 4190628i64;
                    } else {
                        _gotoNext = 4190980i64;
                    };
                } else if (__value__ == (4190628i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L718"
                    if (((@:checkr _s ?? throw "null pointer dereference").mode & (512u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        _gotoNext = 4190662i64;
                    } else {
                        _gotoNext = 4190764i64;
                    };
                } else if (__value__ == (4190662i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._tokPos = (-1 : stdgo.GoInt);
                    _ch_0 = _s._scanComment(_ch_0);
                    _gotoNext = 4189266i64;
                } else if (__value__ == (4190764i64)) {
                    _ch_0 = _s._scanComment(_ch_0);
                    _tok_1 = (-8 : stdgo.GoInt32);
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190812i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L727"
                    if (((@:checkr _s ?? throw "null pointer dereference").mode & (128u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                        _gotoNext = 4190855i64;
                    } else {
                        _gotoNext = 4190907i64;
                    };
                } else if (__value__ == (4190855i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L728"
                    _s._scanRawString();
                    _tok_1 = (-7 : stdgo.GoInt32);
                    _gotoNext = 4190907i64;
                } else if (__value__ == (4190907i64)) {
                    _ch_0 = _s._next();
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190923i64)) {
                    _ch_0 = _s._next();
                    _gotoNext = 4190980i64;
                } else if (__value__ == (4190980i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._tokEnd = ((@:checkr _s ?? throw "null pointer dereference")._srcPos - (@:checkr _s ?? throw "null pointer dereference")._lastCharLen : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._ch = _ch_0;
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L741"
                    return _tok_1;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _scanComment( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _ch:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L615"
        if (_ch == ((47 : stdgo.GoInt32))) {
            _ch = _s._next();
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L618"
            while (((_ch != (10 : stdgo.GoInt32)) && (_ch >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                _ch = _s._next();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L621"
            return _ch;
        };
        _ch = _s._next();
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L626"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L627"
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L628"
                _s._error(("comment not terminated" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L629"
                break;
            };
            var _ch0 = (_ch : stdgo.GoInt32);
            _ch = _s._next();
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L633"
            if (((_ch0 == (42 : stdgo.GoInt32)) && (_ch == (47 : stdgo.GoInt32)) : Bool)) {
                _ch = _s._next();
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L635"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L638"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _scanChar( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L608"
        if (_s._scanString((39 : stdgo.GoInt32)) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L609"
            _s._error(("invalid char literal" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _scanRawString( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _ch = (_s._next() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L598"
        while (_ch != ((96 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L599"
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L600"
                _s._error(("literal not terminated" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L601"
                return;
            };
            _ch = _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _scanString( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _quote:stdgo.GoInt32):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _n = (0 : stdgo.GoInt);
        var _ch = (_s._next() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L581"
        while (_ch != (_quote)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L582"
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L583"
                _s._error(("literal not terminated" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L584"
                return _n;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L586"
            if (_ch == ((92 : stdgo.GoInt32))) {
                _ch = _s._scanEscape(_quote);
            } else {
                _ch = _s._next();
            };
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L591"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L593"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _scanEscape( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _quote:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _ch = (_s._next() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L561"
        {
            final __value__ = _ch;
            if (__value__ == ((97 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((110 : stdgo.GoInt32)) || __value__ == ((114 : stdgo.GoInt32)) || __value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == (_quote)) {
                _ch = _s._next();
            } else if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_ch, (8 : stdgo.GoInt), (3 : stdgo.GoInt));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (2 : stdgo.GoInt));
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (4 : stdgo.GoInt));
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (8 : stdgo.GoInt));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L574"
                _s._error(("invalid char escape" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L576"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _scanDigits( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _ch:stdgo.GoInt32, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L549"
        while (((_n > (0 : stdgo.GoInt) : Bool) && (stdgo._internal.text.scanner.Scanner__digitval._digitVal(_ch) < _base : Bool) : Bool)) {
            _ch = _s._next();
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L551"
            _n--;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L553"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L554"
            _s._error(("invalid char escape" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L556"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _scanNumber( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _ch:stdgo.GoInt32, _seenDot:Bool):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt32; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _base = (10 : stdgo.GoInt);
        var _prefix = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _digsep = (0 : stdgo.GoInt);
        var _invalid = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _tok:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ds:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L408"
        if (!_seenDot) {
            _tok = (-3 : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L410"
            if (_ch == ((48 : stdgo.GoInt32))) {
                _ch = _s._next();
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L412"
                {
                    final __value__ = stdgo._internal.text.scanner.Scanner__lower._lower(_ch);
                    if (__value__ == ((120 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (16 : stdgo.GoInt);
                            final __tmp__1 = (120 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((111 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (111 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((98 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (2 : stdgo.GoInt);
                            final __tmp__1 = (98 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else {
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (48 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                        _digsep = (1 : stdgo.GoInt);
                    };
                };
            };
            {
                var __tmp__ = _s._digits(_ch, _base, _invalid__pointer__);
                _ch = @:tmpset0 __tmp__._0;
                _ds = @:tmpset0 __tmp__._1;
            };
            _digsep = (_digsep | (_ds) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L429"
            if (((_ch == (46 : stdgo.GoInt32)) && (((@:checkr _s ?? throw "null pointer dereference").mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                _ch = _s._next();
                _seenDot = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L436"
        if (_seenDot) {
            _tok = (-4 : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L438"
            if (((_prefix == (111 : stdgo.GoInt32)) || (_prefix == (98 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L439"
                _s._error((("invalid radix point in " : stdgo.GoString) + stdgo._internal.text.scanner.Scanner__litname._litname(_prefix)?.__copy__() : stdgo.GoString)?.__copy__());
            };
            {
                var __tmp__ = _s._digits(_ch, _base, _invalid__pointer__);
                _ch = @:tmpset0 __tmp__._0;
                _ds = @:tmpset0 __tmp__._1;
            };
            _digsep = (_digsep | (_ds) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L445"
        if ((_digsep & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L446"
            _s._error((stdgo._internal.text.scanner.Scanner__litname._litname(_prefix) + (" has no digits" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L450"
        {
            var _e = (stdgo._internal.text.scanner.Scanner__lower._lower(_ch) : stdgo.GoInt32);
            if (((((_e == (101 : stdgo.GoInt32)) || (_e == (112 : stdgo.GoInt32)) : Bool)) && (((@:checkr _s ?? throw "null pointer dereference").mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L451"
                if (((_e == ((101 : stdgo.GoInt32)) && _prefix != ((0 : stdgo.GoInt32)) : Bool) && (_prefix != (48 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L453"
                    _s._errorf(("%q exponent requires decimal mantissa" : stdgo.GoString), stdgo.Go.toInterface(_ch));
                } else if (((_e == (112 : stdgo.GoInt32)) && (_prefix != (120 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L455"
                    _s._errorf(("%q exponent requires hexadecimal mantissa" : stdgo.GoString), stdgo.Go.toInterface(_ch));
                };
                _ch = _s._next();
                _tok = (-4 : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L459"
                if (((_ch == (43 : stdgo.GoInt32)) || (_ch == (45 : stdgo.GoInt32)) : Bool)) {
                    _ch = _s._next();
                };
                {
                    var __tmp__ = _s._digits(_ch, (10 : stdgo.GoInt), (null : stdgo.Pointer<stdgo.GoInt32>));
                    _ch = @:tmpset0 __tmp__._0;
                    _ds = @:tmpset0 __tmp__._1;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L464"
                if ((_ds & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L465"
                    _s._error(("exponent has no digits" : stdgo.GoString));
                };
            } else if (((_prefix == (120 : stdgo.GoInt32)) && (_tok == (-4 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L468"
                _s._error(("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L471"
        if (((_tok == (-3 : stdgo.GoInt32)) && (_invalid != (0 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L472"
            _s._errorf(("invalid digit %q in %s" : stdgo.GoString), stdgo.Go.toInterface(_invalid), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner__litname._litname(_prefix)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L475"
        if ((_digsep & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            (@:checkr _s ?? throw "null pointer dereference")._tokEnd = ((@:checkr _s ?? throw "null pointer dereference")._srcPos - (@:checkr _s ?? throw "null pointer dereference")._lastCharLen : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L477"
            {
                var _i = (stdgo._internal.text.scanner.Scanner__invalidsep._invalidSep(_s.tokenText()?.__copy__()) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L478"
                    _s._error(("\'_\' must separate successive digits" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L482"
        return { _0 : _tok, _1 : _ch };
    }
    @:keep
    @:tdfield
    static public function _digits( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _ch0:stdgo.GoInt32, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt32>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _ch = (0 : stdgo.GoInt32), _digsep = (0 : stdgo.GoInt);
        _ch = _ch0;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L374"
        if ((_base <= (10 : stdgo.GoInt) : Bool)) {
            var _max = (((48 : stdgo.GoInt) + _base : stdgo.GoInt) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L376"
            while ((stdgo._internal.text.scanner.Scanner__isdecimal._isDecimal(_ch) || (_ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L378"
                if (_ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                } else if (((_ch >= _max : Bool) && (_invalid.value == (0 : stdgo.GoInt32)) : Bool)) {
                    _invalid.value = _ch;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                _ch = _s._next();
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L387"
            while ((stdgo._internal.text.scanner.Scanner__ishex._isHex(_ch) || (_ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L389"
                if (_ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                _ch = _s._next();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L396"
        return { _0 : _ch, _1 : _digsep };
    }
    @:keep
    @:tdfield
    static public function _scanIdentifier( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var _ch = (_s._next() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L356"
        {
            var _i = (1 : stdgo.GoInt);
            while (_s._isIdentRune(_ch, _i)) {
                _ch = _s._next();
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L359"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _isIdentRune( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _ch:stdgo.GoInt32, _i:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L347"
        if ((@:checkr _s ?? throw "null pointer dereference").isIdentRune != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L348"
            return ((_ch != (-1 : stdgo.GoInt32)) && (@:checkr _s ?? throw "null pointer dereference").isIdentRune(_ch, _i) : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L350"
        return ((_ch == ((95 : stdgo.GoInt32)) || stdgo._internal.unicode.Unicode_isletter.isLetter(_ch) : Bool) || (stdgo._internal.unicode.Unicode_isdigit.isDigit(_ch) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L343"
        _s._error(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _msg:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._tokEnd = ((@:checkr _s ?? throw "null pointer dereference")._srcPos - (@:checkr _s ?? throw "null pointer dereference")._lastCharLen : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L330"
        (@:checkr _s ?? throw "null pointer dereference").errorCount++;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L331"
        if ((@:checkr _s ?? throw "null pointer dereference").error != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L332"
            (@:checkr _s ?? throw "null pointer dereference").error(_s, _msg?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L333"
            return;
        };
        var _pos = ((@:checkr _s ?? throw "null pointer dereference").position?.__copy__() : stdgo._internal.text.scanner.Scanner_position.Position);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L336"
        if (!_pos.isValid()) {
            _pos = _s.pos()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L339"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(_msg));
    }
    @:keep
    @:tdfield
    static public function peek( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L318"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((-2 : stdgo.GoInt32))) {
            (@:checkr _s ?? throw "null pointer dereference")._ch = _s._next();
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L321"
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((65279 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw "null pointer dereference")._ch = _s._next();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L325"
        return (@:checkr _s ?? throw "null pointer dereference")._ch;
    }
    @:keep
    @:tdfield
    static public function next( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._tokPos = (-1 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference").position.line = (0 : stdgo.GoInt);
        var _ch = (_s.peek() : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L308"
        if (_ch != ((-1 : stdgo.GoInt32))) {
            (@:checkr _s ?? throw "null pointer dereference")._ch = _s._next();
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L311"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _next( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        var __0 = ((@:checkr _s ?? throw "null pointer dereference")._srcBuf[((@:checkr _s ?? throw "null pointer dereference")._srcPos : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _width = __1, _ch = __0;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L221"
        if ((_ch >= (128 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L223"
            while (((((@:checkr _s ?? throw "null pointer dereference")._srcPos + (4 : stdgo.GoInt) : stdgo.GoInt) > (@:checkr _s ?? throw "null pointer dereference")._srcEnd : Bool) && !stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__((@:checkr _s ?? throw "null pointer dereference")._srcPos, (@:checkr _s ?? throw "null pointer dereference")._srcEnd) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L226"
                if (((@:checkr _s ?? throw "null pointer dereference")._tokPos >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L227"
                    (@:checkr _s ?? throw "null pointer dereference")._tokBuf.write(((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__((@:checkr _s ?? throw "null pointer dereference")._tokPos, (@:checkr _s ?? throw "null pointer dereference")._srcPos) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _s ?? throw "null pointer dereference")._tokPos = (0 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L232"
                ((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__((@:checkr _s ?? throw "null pointer dereference")._srcPos, (@:checkr _s ?? throw "null pointer dereference")._srcEnd) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _s ?? throw "null pointer dereference")._srcBufOffset = ((@:checkr _s ?? throw "null pointer dereference")._srcBufOffset + ((@:checkr _s ?? throw "null pointer dereference")._srcPos) : stdgo.GoInt);
                var _i = ((@:checkr _s ?? throw "null pointer dereference")._srcEnd - (@:checkr _s ?? throw "null pointer dereference")._srcPos : stdgo.GoInt);
                var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._src.read(((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__(_i, (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                (@:checkr _s ?? throw "null pointer dereference")._srcPos = (0 : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._srcEnd = (_i + _n : stdgo.GoInt);
                (@:checkr _s ?? throw "null pointer dereference")._srcBuf[((@:checkr _s ?? throw "null pointer dereference")._srcEnd : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L244"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L245"
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L246"
                        _s._error(_err.error()?.__copy__());
                    };
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L248"
                    if ((@:checkr _s ?? throw "null pointer dereference")._srcEnd == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L249"
                        if (((@:checkr _s ?? throw "null pointer dereference")._lastCharLen > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L251"
                            (@:checkr _s ?? throw "null pointer dereference")._column++;
                        };
                        (@:checkr _s ?? throw "null pointer dereference")._lastCharLen = (0 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L254"
                        return (-1 : stdgo.GoInt32);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L260"
                    break;
                };
            };
            _ch = ((@:checkr _s ?? throw "null pointer dereference")._srcBuf[((@:checkr _s ?? throw "null pointer dereference")._srcPos : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L265"
            if ((_ch >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _s ?? throw "null pointer dereference")._srcBuf.__slice__((@:checkr _s ?? throw "null pointer dereference")._srcPos, (@:checkr _s ?? throw "null pointer dereference")._srcEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    _ch = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L268"
                if (((_ch == (65533 : stdgo.GoInt32)) && (_width == (1 : stdgo.GoInt)) : Bool)) {
                    (@:checkr _s ?? throw "null pointer dereference")._srcPos = ((@:checkr _s ?? throw "null pointer dereference")._srcPos + (_width) : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._lastCharLen = _width;
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L272"
                    (@:checkr _s ?? throw "null pointer dereference")._column++;
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L273"
                    _s._error(("invalid UTF-8 encoding" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L274"
                    return _ch;
                };
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._srcPos = ((@:checkr _s ?? throw "null pointer dereference")._srcPos + (_width) : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._lastCharLen = _width;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L282"
        (@:checkr _s ?? throw "null pointer dereference")._column++;
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L285"
        {
            final __value__ = _ch;
            if (__value__ == ((0 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L288"
                _s._error(("invalid character NUL" : stdgo.GoString));
            } else if (__value__ == ((10 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L290"
                (@:checkr _s ?? throw "null pointer dereference")._line++;
                (@:checkr _s ?? throw "null pointer dereference")._lastLineLen = (@:checkr _s ?? throw "null pointer dereference")._column;
                (@:checkr _s ?? throw "null pointer dereference")._column = (0 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L295"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function init( _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _src:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> {
        @:recv var _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._src = _src;
        (@:checkr _s ?? throw "null pointer dereference")._srcBuf[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
        (@:checkr _s ?? throw "null pointer dereference")._srcPos = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._srcEnd = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._srcBufOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._line = (1 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._column = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._lastLineLen = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._lastCharLen = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._tokPos = (-1 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._ch = (-2 : stdgo.GoInt32);
        (@:checkr _s ?? throw "null pointer dereference").error = null;
        (@:checkr _s ?? throw "null pointer dereference").errorCount = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference").mode = (1012u32 : stdgo.GoUInt);
        (@:checkr _s ?? throw "null pointer dereference").whitespace = (4294977024i64 : stdgo.GoUInt64);
        (@:checkr _s ?? throw "null pointer dereference").position.line = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner.go#L211"
        return _s;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.text.scanner.Scanner_scanner.Scanner):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function isValid( __self__:stdgo._internal.text.scanner.Scanner_scanner.Scanner):Bool return @:_5 __self__.isValid();
}
