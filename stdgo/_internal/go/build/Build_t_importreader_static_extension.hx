package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.T_importReader_asInterface) class T_importReader_static_extension {
    @:keep
    @:tdfield
    static public function _readImport( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (_r._peekByte(true) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L371"
        if (_c == ((46 : stdgo.GoUInt8))) {
            (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        } else if (stdgo._internal.go.build.Build__isident._isIdent(_c)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L374"
            _r._readIdent();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L376"
        _r._readString();
    }
    @:keep
    @:tdfield
    static public function _readString( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L339"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r._nextByte(true);
                    if (__value__ == ((96 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L341"
                        while ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L342"
                            if (_r._nextByte(false) == ((96 : stdgo.GoUInt8))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L343"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L345"
                            if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L346"
                                _r._syntaxError();
                            };
                        };
                        break;
                    } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L350"
                        while ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                            var _c = (_r._nextByte(false) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L352"
                            if (_c == ((34 : stdgo.GoUInt8))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L353"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L355"
                            if (((@:checkr _r ?? throw "null pointer dereference")._eof || (_c == (10 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L356"
                                _r._syntaxError();
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L358"
                            if (_c == ((92 : stdgo.GoUInt8))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L359"
                                _r._nextByte(false);
                            };
                        };
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L363"
                        _r._syntaxError();
                    };
                };
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readIdent( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (_r._peekByte(true) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L327"
        if (!stdgo._internal.go.build.Build__isident._isIdent(_c)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L328"
            _r._syntaxError();
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L329"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L331"
        while (stdgo._internal.go.build.Build__isident._isIdent(_r._peekByte(false))) {
            (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _readKeyword( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _kw:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L311"
        _r._peekByte(true);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L312"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_kw.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L313"
                if (_r._nextByte(false) != (_kw[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L314"
                    _r._syntaxError();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L315"
                    return;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L318"
        if (stdgo._internal.go.build.Build__isident._isIdent(_r._peekByte(false))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L319"
            _r._syntaxError();
        };
    }
    @:keep
    @:tdfield
    static public function _findEmbed( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _first:Bool):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var reswitchBreak = false;
        var skipSlashSlashBreak = false;
        var _i_97:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c1_96:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_95:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _startLine_94:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _startLine_94 = !_first;
                    0i64;
                    _gotoNext = 4367271i64;
                } else if (__value__ == (4367271i64)) {
                    //"file://#L0"
                    if ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                        _gotoNext = 4367298i64;
                    } else {
                        _gotoNext = 4369087i64;
                    };
                } else if (__value__ == (4367298i64)) {
                    _c_95 = _r._readByteNoBuf();
                    _gotoNext = 4367325i64;
                } else if (__value__ == (4367325i64)) {
                    reswitchBreak = false;
                    _gotoNext = 4367337i64;
                } else if (__value__ == (4367337i64)) {
                    //"file://#L0"
                    if (!reswitchBreak) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L199"
                        {
                            final __value__ = _c_95;
                            if (__value__ == ((10 : stdgo.GoUInt8))) {
                                _gotoNext = 4367383i64;
                            } else if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8))) {
                                _gotoNext = 4367417i64;
                            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4367464i64;
                            } else if (__value__ == ((96 : stdgo.GoUInt8))) {
                                _gotoNext = 4367813i64;
                            } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                                _gotoNext = 4368012i64;
                            } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                                _gotoNext = 4368346i64;
                            } else {
                                _gotoNext = 4367350i64;
                            };
                        };
                    } else {
                        _gotoNext = 4367271i64;
                    };
                } else if (__value__ == (4367350i64)) {
                    _startLine_94 = false;
                    _gotoNext = 4367271i64;
                } else if (__value__ == (4367383i64)) {
                    _startLine_94 = true;
                    _gotoNext = 4367271i64;
                } else if (__value__ == (4367417i64)) {
                    _gotoNext = 4367271i64;
                } else if (__value__ == (4367464i64)) {
                    _startLine_94 = false;
                    0i64;
                    _gotoNext = 4367498i64;
                } else if (__value__ == (4367498i64)) {
                    //"file://#L0"
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4367515i64;
                    } else {
                        _gotoNext = 4367796i64;
                    };
                } else if (__value__ == (4367515i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L212"
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4367530i64;
                    } else {
                        _gotoNext = 4367563i64;
                    };
                } else if (__value__ == (4367530i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L213"
                    _r._syntaxError();
                    _gotoNext = 4367563i64;
                } else if (__value__ == (4367563i64)) {
                    _c_95 = _r._readByteNoBuf();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L216"
                    if (_c_95 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4367602i64;
                    } else {
                        _gotoNext = 4367722i64;
                    };
                } else if (__value__ == (4367602i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L217"
                    _r._readByteNoBuf();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L218"
                    if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 4367648i64;
                    } else {
                        _gotoNext = 4367703i64;
                    };
                } else if (__value__ == (4367648i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L219"
                    _r._syntaxError();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L220"
                    return false;
                    _gotoNext = 4367703i64;
                } else if (__value__ == (4367703i64)) {
                    0i64;
                    _gotoNext = 4367498i64;
                } else if (__value__ == (4367722i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L224"
                    if (_c_95 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 4367734i64;
                    } else {
                        _gotoNext = 4367498i64;
                    };
                } else if (__value__ == (4367734i64)) {
                    _c_95 = _r._readByteNoBuf();
                    _gotoNext = 4367325i64;
                } else if (__value__ == (4367796i64)) {
                    _gotoNext = 4367325i64;
                } else if (__value__ == (4367813i64)) {
                    _startLine_94 = false;
                    0i64;
                    _gotoNext = 4367847i64;
                } else if (__value__ == (4367847i64)) {
                    //"file://#L0"
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4367864i64;
                    } else {
                        _gotoNext = 4367271i64;
                    };
                } else if (__value__ == (4367864i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L234"
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4367879i64;
                    } else {
                        _gotoNext = 4367912i64;
                    };
                } else if (__value__ == (4367879i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L235"
                    _r._syntaxError();
                    _gotoNext = 4367912i64;
                } else if (__value__ == (4367912i64)) {
                    _c_95 = _r._readByteNoBuf();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L238"
                    if (_c_95 == ((96 : stdgo.GoUInt8))) {
                        _gotoNext = 4367950i64;
                    } else {
                        _gotoNext = 4367847i64;
                    };
                } else if (__value__ == (4367950i64)) {
                    _c_95 = _r._readByteNoBuf();
                    _gotoNext = 4367325i64;
                } else if (__value__ == (4368012i64)) {
                    _startLine_94 = false;
                    0i64;
                    _gotoNext = 4368047i64;
                } else if (__value__ == (4368047i64)) {
                    //"file://#L0"
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4368064i64;
                    } else {
                        _gotoNext = 4367271i64;
                    };
                } else if (__value__ == (4368064i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L247"
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4368079i64;
                    } else {
                        _gotoNext = 4368112i64;
                    };
                } else if (__value__ == (4368079i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L248"
                    _r._syntaxError();
                    _gotoNext = 4368112i64;
                } else if (__value__ == (4368112i64)) {
                    _c_95 = _r._readByteNoBuf();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L251"
                    if (_c_95 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4368151i64;
                    } else {
                        _gotoNext = 4368271i64;
                    };
                } else if (__value__ == (4368151i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L252"
                    _r._readByteNoBuf();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L253"
                    if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 4368197i64;
                    } else {
                        _gotoNext = 4368252i64;
                    };
                } else if (__value__ == (4368197i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L254"
                    _r._syntaxError();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L255"
                    return false;
                    _gotoNext = 4368252i64;
                } else if (__value__ == (4368252i64)) {
                    0i64;
                    _gotoNext = 4368047i64;
                } else if (__value__ == (4368271i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L259"
                    if (_c_95 == ((39 : stdgo.GoUInt8))) {
                        _gotoNext = 4368284i64;
                    } else {
                        _gotoNext = 4368047i64;
                    };
                } else if (__value__ == (4368284i64)) {
                    _c_95 = _r._readByteNoBuf();
                    _gotoNext = 4367325i64;
                } else if (__value__ == (4368346i64)) {
                    _c_95 = _r._readByteNoBuf();
                    _gotoNext = 4368384i64;
                } else if (__value__ == (4368384i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L267"
                    {
                        final __value__ = _c_95;
                        if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4368451i64;
                        } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 4368639i64;
                        } else {
                            _gotoNext = 4368398i64;
                        };
                    };
                } else if (__value__ == (4368398i64)) {
                    _startLine_94 = false;
                    _gotoNext = 4367325i64;
                } else if (__value__ == (4368451i64)) {
                    0i64;
                    _gotoNext = 4368481i64;
                } else if (__value__ == (4368481i64)) {
                    //"file://#L0"
                    if (((((_c_95 != (42 : stdgo.GoUInt8)) || (_c1_96 != (47 : stdgo.GoUInt8)) : Bool)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                        _gotoNext = 4368525i64;
                    } else {
                        _gotoNext = 4368617i64;
                    };
                } else if (__value__ == (4368525i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L275"
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4368541i64;
                    } else {
                        _gotoNext = 4368577i64;
                    };
                } else if (__value__ == (4368541i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L276"
                    _r._syntaxError();
                    _gotoNext = 4368577i64;
                } else if (__value__ == (4368577i64)) {
                    {
                        final __tmp__0 = _c1_96;
                        final __tmp__1 = _r._readByteNoBuf();
                        _c_95 = @:binopAssign __tmp__0;
                        _c1_96 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4368481i64;
                } else if (__value__ == (4368617i64)) {
                    _startLine_94 = false;
                    _gotoNext = 4367271i64;
                } else if (__value__ == (4368639i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L283"
                    if (_startLine_94) {
                        _gotoNext = 4368666i64;
                    } else {
                        _gotoNext = 4368958i64;
                    };
                } else if (__value__ == (4368666i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L285"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.go.build.Build__goembed._goEmbed.length)) {
                        _gotoNext = 4368842i64;
                    } else {
                        _gotoNext = 4368850i64;
                    };
                } else if (__value__ == (4368727i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L285"
                    _i_97++;
                    _gotoNext = 4368843i64;
                } else if (__value__ == (4368746i64)) {
                    _c_95 = _r._readByteNoBuf();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L287"
                    if (_c_95 != (stdgo._internal.go.build.Build__goembed._goEmbed[(_i_97 : stdgo.GoInt)])) {
                        _gotoNext = 4368801i64;
                    } else {
                        _gotoNext = 4368727i64;
                    };
                } else if (__value__ == (4368801i64)) {
                    _gotoNext = 4368958i64;
                } else if (__value__ == (4368842i64)) {
                    _i_97 = 0i64;
                    _gotoNext = 4368843i64;
                } else if (__value__ == (4368843i64)) {
                    //"file://#L0"
                    if (_i_97 < (stdgo._internal.go.build.Build__goembed._goEmbed.length)) {
                        _gotoNext = 4368746i64;
                    } else {
                        _gotoNext = 4368850i64;
                    };
                } else if (__value__ == (4368850i64)) {
                    _c_95 = _r._readByteNoBuf();
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L292"
                    if (((_c_95 == (32 : stdgo.GoUInt8)) || (_c_95 == (9 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4368902i64;
                    } else {
                        _gotoNext = 4368958i64;
                    };
                } else if (__value__ == (4368902i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L294"
                    return true;
                    _gotoNext = 4368958i64;
                } else if (__value__ == (4368958i64)) {
                    _gotoNext = 4368958i64;
                    0i64;
                    skipSlashSlashBreak = false;
                    _gotoNext = 4368978i64;
                } else if (__value__ == (4368978i64)) {
                    //"file://#L0"
                    if (!skipSlashSlashBreak && (((_c_95 != ((10 : stdgo.GoUInt8)) && (@:checkr _r ?? throw "null pointer dereference")._err == null : Bool) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool))) {
                        _gotoNext = 4369018i64;
                    } else {
                        _gotoNext = 4369057i64;
                    };
                } else if (__value__ == (4369018i64)) {
                    _c_95 = _r._readByteNoBuf();
                    _gotoNext = 4368978i64;
                } else if (__value__ == (4369057i64)) {
                    _startLine_94 = true;
                    _gotoNext = 4367271i64;
                } else if (__value__ == (4369087i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L305"
                    return false;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _nextByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _skipSpace:Bool):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (_r._peekByte(_skipSpace) : stdgo.GoUInt8);
        (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L181"
        return _c;
    }
    @:keep
    @:tdfield
    static public function _peekByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _skipSpace:Bool):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L127"
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L128"
            {
                (@:checkr _r ?? throw "null pointer dereference")._nerr++;
                if (((@:checkr _r ?? throw "null pointer dereference")._nerr > (10000 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L129"
                    throw stdgo.Go.toInterface(("go/build: import reader looping" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L131"
            return (0 : stdgo.GoUInt8);
        };
        var _c = ((@:checkr _r ?? throw "null pointer dereference")._peek : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L138"
        if (_c == ((0 : stdgo.GoUInt8))) {
            _c = _r._readByte();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L141"
        while ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L142"
            if (_skipSpace) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L145"
                {
                    final __value__ = _c;
                    if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8))) {
                        _c = _r._readByte();
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L148"
                        continue;
                    } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                        _c = _r._readByte();
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L152"
                        if (_c == ((47 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L153"
                            while (((_c != ((10 : stdgo.GoUInt8)) && (@:checkr _r ?? throw "null pointer dereference")._err == null : Bool) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                                _c = _r._readByte();
                            };
                        } else if (_c == ((42 : stdgo.GoUInt8))) {
                            var _c1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L158"
                            while (((((_c != (42 : stdgo.GoUInt8)) || (_c1 != (47 : stdgo.GoUInt8)) : Bool)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L159"
                                if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L160"
                                    _r._syntaxError();
                                };
                                {
                                    final __tmp__0 = _c1;
                                    final __tmp__1 = _r._readByte();
                                    _c = @:binopAssign __tmp__0;
                                    _c1 = @:binopAssign __tmp__1;
                                };
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L165"
                            _r._syntaxError();
                        };
                        _c = _r._readByte();
                        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L168"
                        continue;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L171"
            break;
        };
        (@:checkr _r ?? throw "null pointer dereference")._peek = _c;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L174"
        return (@:checkr _r ?? throw "null pointer dereference")._peek;
    }
    @:keep
    @:tdfield
    static public function _readByteNoBuf( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L96"
        if ((((@:checkr _r ?? throw "null pointer dereference")._buf.length) > (0 : stdgo.GoInt) : Bool)) {
            _c = (@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)];
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._b.readByte();
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L101"
            if (((_err == null) && (_c == (0 : stdgo.GoUInt8)) : Bool)) {
                _err = stdgo._internal.go.build.Build__errnul._errNUL;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L106"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L107"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _r ?? throw "null pointer dereference")._eof = true;
            } else if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                (@:checkr _r ?? throw "null pointer dereference")._err = _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L112"
            return (0 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L114"
        (@:checkr _r ?? throw "null pointer dereference")._pos.offset++;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L115"
        if (_c == ((10 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L116"
            (@:checkr _r ?? throw "null pointer dereference")._pos.line++;
            (@:checkr _r ?? throw "null pointer dereference")._pos.column = (1 : stdgo.GoInt);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L119"
            (@:checkr _r ?? throw "null pointer dereference")._pos.column++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L121"
        return _c;
    }
    @:keep
    @:tdfield
    static public function _readByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L74"
        if (_err == null) {
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L76"
            if (_c == ((0 : stdgo.GoUInt8))) {
                _err = stdgo._internal.go.build.Build__errnul._errNUL;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L80"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L81"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _r ?? throw "null pointer dereference")._eof = true;
            } else if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                (@:checkr _r ?? throw "null pointer dereference")._err = _err;
            };
            _c = (0 : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L88"
        return _c;
    }
    @:keep
    @:tdfield
    static public function _syntaxError( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L65"
        if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.go.build.Build__errsyntax._errSyntax;
        };
    }
}
