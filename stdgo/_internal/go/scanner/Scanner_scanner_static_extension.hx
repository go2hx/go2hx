package stdgo._internal.go.scanner;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _tok = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _lit = ("" : stdgo.GoString);
        var _insertSemi_9:Bool = false;
        var _nlOffset_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_11:stdgo.GoString = ("" : stdgo.GoString);
        var _ch_10:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 4366842i64;
                } else if (__value__ == (4366842i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L792"
                    if ((@:checkr _s ?? throw "null pointer dereference")._nlPos.isValid()) {
                        _gotoNext = 4366875i64;
                    } else {
                        _gotoNext = 4367074i64;
                    };
                } else if (__value__ == (4366875i64)) {
                    {
                        final __tmp__0 = (@:checkr _s ?? throw "null pointer dereference")._nlPos;
                        final __tmp__1 = (57 : stdgo._internal.go.token.Token_token.Token);
                        final __tmp__2 = ("\n" : stdgo.GoString);
                        _pos = @:binopAssign __tmp__0;
                        _tok = @:binopAssign __tmp__1;
                        _lit = @:binopAssign __tmp__2;
                    };
                    (@:checkr _s ?? throw "null pointer dereference")._nlPos = (0 : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L797"
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = 4367074i64;
                } else if (__value__ == (4367074i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L800"
                    _s._skipWhitespace();
                    _pos = (@:checkr _s ?? throw "null pointer dereference")._file.pos((@:checkr _s ?? throw "null pointer dereference")._offset);
                    _insertSemi_9 = false;
                    _gotoNext = 4367195i64;
                } else if (__value__ == (4367195i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L807"
                    {
                        _ch_10 = (@:checkr _s ?? throw "null pointer dereference")._ch;
                        if (stdgo._internal.go.scanner.Scanner__isletter._isLetter(_ch_10)) {
                            _gotoNext = 4367217i64;
                        } else if ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal(_ch_10) || (_ch_10 == ((46 : stdgo.GoInt32)) && stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((_s._peek() : stdgo.GoInt32)) : Bool) : Bool)) {
                            _gotoNext = 4367561i64;
                        } else {
                            _gotoNext = 4367672i64;
                        };
                    };
                } else if (__value__ == (4367217i64)) {
                    _lit = _s._scanIdentifier()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L810"
                    if (((_lit.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4367281i64;
                    } else {
                        _gotoNext = 4367512i64;
                    };
                } else if (__value__ == (4367281i64)) {
                    _tok = stdgo._internal.go.token.Token_lookup.lookup(_lit?.__copy__());
                    _gotoNext = 4367380i64;
                } else if (__value__ == (4367380i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L813"
                    {
                        final __value__ = _tok;
                        if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((80 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 4367396i64;
                        } else {
                            _gotoNext = 4370849i64;
                        };
                    };
                } else if (__value__ == (4367396i64)) {
                    _insertSemi_9 = true;
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4367512i64)) {
                    _gotoNext = 4367512i64;
                    _insertSemi_9 = true;
                    _tok = (4 : stdgo._internal.go.token.Token_token.Token);
                    0i64;
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4367561i64)) {
                    _insertSemi_9 = true;
                    {
                        var __tmp__ = _s._scanNumber();
                        _tok = @:tmpset0 __tmp__._0;
                        _lit = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4367672i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L825"
                    _s._next();
                    _gotoNext = 4367718i64;
                } else if (__value__ == (4367718i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L826"
                    {
                        final __value__ = _ch_10;
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 4367732i64;
                        } else if (__value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 4367868i64;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 4368083i64;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 4368162i64;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 4368238i64;
                        } else if (__value__ == ((58 : stdgo.GoInt32))) {
                            _gotoNext = 4368320i64;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 4368378i64;
                        } else if (__value__ == ((44 : stdgo.GoInt32))) {
                            _gotoNext = 4368591i64;
                        } else if (__value__ == ((59 : stdgo.GoInt32))) {
                            _gotoNext = 4368624i64;
                        } else if (__value__ == ((40 : stdgo.GoInt32))) {
                            _gotoNext = 4368674i64;
                        } else if (__value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 4368708i64;
                        } else if (__value__ == ((91 : stdgo.GoInt32))) {
                            _gotoNext = 4368763i64;
                        } else if (__value__ == ((93 : stdgo.GoInt32))) {
                            _gotoNext = 4368797i64;
                        } else if (__value__ == ((123 : stdgo.GoInt32))) {
                            _gotoNext = 4368852i64;
                        } else if (__value__ == ((125 : stdgo.GoInt32))) {
                            _gotoNext = 4368886i64;
                        } else if (__value__ == ((43 : stdgo.GoInt32))) {
                            _gotoNext = 4368941i64;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 4369069i64;
                        } else if (__value__ == ((42 : stdgo.GoInt32))) {
                            _gotoNext = 4369197i64;
                        } else if (__value__ == ((47 : stdgo.GoInt32))) {
                            _gotoNext = 4369257i64;
                        } else if (__value__ == ((37 : stdgo.GoInt32))) {
                            _gotoNext = 4369829i64;
                        } else if (__value__ == ((94 : stdgo.GoInt32))) {
                            _gotoNext = 4369889i64;
                        } else if (__value__ == ((60 : stdgo.GoInt32))) {
                            _gotoNext = 4369949i64;
                        } else if (__value__ == ((62 : stdgo.GoInt32))) {
                            _gotoNext = 4370109i64;
                        } else if (__value__ == ((61 : stdgo.GoInt32))) {
                            _gotoNext = 4370196i64;
                        } else if (__value__ == ((33 : stdgo.GoInt32))) {
                            _gotoNext = 4370252i64;
                        } else if (__value__ == ((38 : stdgo.GoInt32))) {
                            _gotoNext = 4370305i64;
                        } else if (__value__ == ((124 : stdgo.GoInt32))) {
                            _gotoNext = 4370490i64;
                        } else if (__value__ == ((126 : stdgo.GoInt32))) {
                            _gotoNext = 4370564i64;
                        } else {
                            _gotoNext = 4370597i64;
                        };
                    };
                } else if (__value__ == (4367732i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L828"
                    if ((@:checkr _s ?? throw "null pointer dereference")._insertSemi) {
                        _gotoNext = 4367761i64;
                    } else {
                        _gotoNext = 4367850i64;
                    };
                } else if (__value__ == (4367761i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L830"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 4367850i64;
                } else if (__value__ == (4367850i64)) {
                    _tok = (1 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4367868i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L838"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368083i64)) {
                    _insertSemi_9 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _s._scanString()?.__copy__();
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368162i64)) {
                    _insertSemi_9 = true;
                    _tok = (8 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _s._scanRune()?.__copy__();
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368238i64)) {
                    _insertSemi_9 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _s._scanRawString()?.__copy__();
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368320i64)) {
                    _tok = _s._switch2((58 : stdgo._internal.go.token.Token_token.Token), (47 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368378i64)) {
                    _tok = (53 : stdgo._internal.go.token.Token_token.Token);
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L856"
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (46 : stdgo.GoInt32)) && (_s._peek() == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4368511i64;
                    } else {
                        _gotoNext = 4370849i64;
                    };
                } else if (__value__ == (4368511i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L857"
                    _s._next();
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L858"
                    _s._next();
                    _tok = (48 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368591i64)) {
                    _tok = (52 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368624i64)) {
                    _tok = (57 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (";" : stdgo.GoString);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368674i64)) {
                    _tok = (49 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368708i64)) {
                    _insertSemi_9 = true;
                    _tok = (54 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368763i64)) {
                    _tok = (50 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368797i64)) {
                    _insertSemi_9 = true;
                    _tok = (55 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368852i64)) {
                    _tok = (51 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368886i64)) {
                    _insertSemi_9 = true;
                    _tok = (56 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4368941i64)) {
                    _tok = _s._switch3((12 : stdgo._internal.go.token.Token_token.Token), (23 : stdgo._internal.go.token.Token_token.Token), (43 : stdgo.GoInt32), (37 : stdgo._internal.go.token.Token_token.Token));
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L883"
                    if (_tok == ((37 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 4369038i64;
                    } else {
                        _gotoNext = 4370849i64;
                    };
                } else if (__value__ == (4369038i64)) {
                    _insertSemi_9 = true;
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4369069i64)) {
                    _tok = _s._switch3((13 : stdgo._internal.go.token.Token_token.Token), (24 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo.GoInt32), (38 : stdgo._internal.go.token.Token_token.Token));
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L888"
                    if (_tok == ((38 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 4369166i64;
                    } else {
                        _gotoNext = 4370849i64;
                    };
                } else if (__value__ == (4369166i64)) {
                    _insertSemi_9 = true;
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4369197i64)) {
                    _tok = _s._switch2((14 : stdgo._internal.go.token.Token_token.Token), (25 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4369257i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L894"
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (47 : stdgo.GoInt32)) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (42 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4369300i64;
                    } else {
                        _gotoNext = 4369755i64;
                    };
                } else if (__value__ == (4369300i64)) {
                    {
                        var __tmp__ = _s._scanComment();
                        _comment_11 = @:tmpset0 __tmp__._0?.__copy__();
                        _nlOffset_12 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L897"
                    if (((@:checkr _s ?? throw "null pointer dereference")._insertSemi && (_nlOffset_12 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4369395i64;
                    } else {
                        _gotoNext = 4369555i64;
                    };
                } else if (__value__ == (4369395i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._nlPos = (@:checkr _s ?? throw "null pointer dereference")._file.pos(_nlOffset_12);
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    _gotoNext = 4369626i64;
                } else if (__value__ == (4369555i64)) {
                    _gotoNext = 4369555i64;
                    _insertSemi_9 = (@:checkr _s ?? throw "null pointer dereference")._insertSemi;
                    0i64;
                    _gotoNext = 4369626i64;
                } else if (__value__ == (4369626i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L905"
                    if (((@:checkr _s ?? throw "null pointer dereference")._mode & (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 4369654i64;
                    } else {
                        _gotoNext = 4369707i64;
                    };
                } else if (__value__ == (4369654i64)) {
                    _gotoNext = 4366842i64;
                } else if (__value__ == (4369707i64)) {
                    _tok = (2 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _comment_11?.__copy__();
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4369755i64)) {
                    _gotoNext = 4369755i64;
                    _tok = _s._switch2((15 : stdgo._internal.go.token.Token_token.Token), (26 : stdgo._internal.go.token.Token_token.Token));
                    0i64;
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4369829i64)) {
                    _tok = _s._switch2((16 : stdgo._internal.go.token.Token_token.Token), (27 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4369889i64)) {
                    _tok = _s._switch2((19 : stdgo._internal.go.token.Token_token.Token), (30 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4369949i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L920"
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((45 : stdgo.GoInt32))) {
                        _gotoNext = 4369977i64;
                    } else {
                        _gotoNext = 4370024i64;
                    };
                } else if (__value__ == (4369977i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L921"
                    _s._next();
                    _tok = (36 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370024i64)) {
                    _gotoNext = 4370024i64;
                    _tok = _s._switch4((40 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo._internal.go.token.Token_token.Token), (60 : stdgo.GoInt32), (20 : stdgo._internal.go.token.Token_token.Token), (31 : stdgo._internal.go.token.Token_token.Token));
                    0i64;
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370109i64)) {
                    _tok = _s._switch4((41 : stdgo._internal.go.token.Token_token.Token), (46 : stdgo._internal.go.token.Token_token.Token), (62 : stdgo.GoInt32), (21 : stdgo._internal.go.token.Token_token.Token), (32 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370196i64)) {
                    _tok = _s._switch2((42 : stdgo._internal.go.token.Token_token.Token), (39 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370252i64)) {
                    _tok = _s._switch2((43 : stdgo._internal.go.token.Token_token.Token), (44 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370305i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L933"
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((94 : stdgo.GoInt32))) {
                        _gotoNext = 4370333i64;
                    } else {
                        _gotoNext = 4370415i64;
                    };
                } else if (__value__ == (4370333i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L934"
                    _s._next();
                    _tok = _s._switch2((22 : stdgo._internal.go.token.Token_token.Token), (33 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370415i64)) {
                    _gotoNext = 4370415i64;
                    _tok = _s._switch3((17 : stdgo._internal.go.token.Token_token.Token), (28 : stdgo._internal.go.token.Token_token.Token), (38 : stdgo.GoInt32), (34 : stdgo._internal.go.token.Token_token.Token));
                    0i64;
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370490i64)) {
                    _tok = _s._switch3((18 : stdgo._internal.go.token.Token_token.Token), (29 : stdgo._internal.go.token.Token_token.Token), (124 : stdgo.GoInt32), (35 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370564i64)) {
                    _tok = (88 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370597i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L945"
                    if (_ch_10 != ((65279 : stdgo.GoInt32))) {
                        _gotoNext = 4370672i64;
                    } else {
                        _gotoNext = 4370744i64;
                    };
                } else if (__value__ == (4370672i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L946"
                    _s._errorf((@:checkr _s ?? throw "null pointer dereference")._file.offset(_pos), ("illegal character %#U" : stdgo.GoString), stdgo.Go.toInterface(_ch_10));
                    _gotoNext = 4370744i64;
                } else if (__value__ == (4370744i64)) {
                    _insertSemi_9 = (@:checkr _s ?? throw "null pointer dereference")._insertSemi;
                    _tok = (0 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (_ch_10 : stdgo.GoString)?.__copy__();
                    _gotoNext = 4370849i64;
                } else if (__value__ == (4370849i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L953"
                    if (((@:checkr _s ?? throw "null pointer dereference")._mode & (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 4370880i64;
                    } else {
                        _gotoNext = 4370915i64;
                    };
                } else if (__value__ == (4370880i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = _insertSemi_9;
                    _gotoNext = 4370915i64;
                } else if (__value__ == (4370915i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L957"
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _switch4( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token, _tok3:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L745"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L746"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L747"
            return _tok1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L749"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == (_ch2)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L750"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L751"
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L752"
                _s._next();
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L753"
                return _tok3;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L755"
            return _tok2;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L757"
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch3( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L733"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L734"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L735"
            return _tok1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L737"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == (_ch2)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L738"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L739"
            return _tok2;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L741"
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch2( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L725"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L726"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L727"
            return _tok1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L729"
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _skipWhitespace( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L713"
        while (((((@:checkr _s ?? throw "null pointer dereference")._ch == ((32 : stdgo.GoInt32)) || (@:checkr _s ?? throw "null pointer dereference")._ch == ((9 : stdgo.GoInt32)) : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32)) && !(@:checkr _s ?? throw "null pointer dereference")._insertSemi : Bool) : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (13 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L714"
            _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _scanRawString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _hasCR = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L689"
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L691"
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L692"
                _s._error(_offs, ("raw string literal not terminated" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L693"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L695"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L696"
            if (_ch == ((96 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L697"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L699"
            if (_ch == ((13 : stdgo.GoInt32))) {
                _hasCR = true;
            };
        };
        var _lit = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L705"
        if (_hasCR) {
            _lit = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit, false);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L709"
        return (_lit : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L649"
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L651"
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L652"
                _s._error(_offs, ("string literal not terminated" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L653"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L655"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L656"
            if (_ch == ((34 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L657"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L659"
            if (_ch == ((92 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L660"
                _s._scanEscape((34 : stdgo.GoInt32));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L664"
        return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanRune( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _valid = (true : Bool);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L615"
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L617"
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L619"
                if (_valid) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L620"
                    _s._error(_offs, ("rune literal not terminated" : stdgo.GoString));
                    _valid = false;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L623"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L625"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L626"
            if (_ch == ((39 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L627"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L629"
            _n++;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L630"
            if (_ch == ((92 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L631"
                if (!_s._scanEscape((39 : stdgo.GoInt32))) {
                    _valid = false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L638"
        if ((_valid && (_n != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L639"
            _s._error(_offs, ("illegal rune literal" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L642"
        return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanEscape( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _quote:stdgo.GoInt32):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _max:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L561"
        {
            final __value__ = (@:checkr _s ?? throw "null pointer dereference")._ch;
            if (__value__ == ((97 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((110 : stdgo.GoInt32)) || __value__ == ((114 : stdgo.GoInt32)) || __value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == (_quote)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L563"
                _s._next();
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L564"
                return true;
            } else if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                {
                    final __tmp__0 = (3 : stdgo.GoInt);
                    final __tmp__1 = (8u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L568"
                _s._next();
                {
                    final __tmp__0 = (2 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L571"
                _s._next();
                {
                    final __tmp__0 = (4 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L574"
                _s._next();
                {
                    final __tmp__0 = (8 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else {
                var _msg = (("unknown escape sequence" : stdgo.GoString) : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L578"
                if (((@:checkr _s ?? throw "null pointer dereference")._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L581"
                _s._error(_offs, _msg?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L582"
                return false;
            };
        };
        var _x:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L586"
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _d = (stdgo._internal.go.scanner.Scanner__digitval._digitVal((@:checkr _s ?? throw "null pointer dereference")._ch) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L588"
            if ((_d >= _base : Bool)) {
                var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character %#U in escape sequence" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch))?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L590"
                if (((@:checkr _s ?? throw "null pointer dereference")._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L593"
                _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, _msg?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L594"
                return false;
            };
            _x = ((_x * _base : stdgo.GoUInt32) + _d : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L597"
            _s._next();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L598"
            _n--;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L601"
        if (((_x > _max : Bool) || (((55296u32 : stdgo.GoUInt32) <= _x : Bool) && (_x < (57344u32 : stdgo.GoUInt32) : Bool) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L602"
            _s._error(_offs, ("escape sequence is invalid Unicode code point" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L603"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L606"
        return true;
    }
    @:keep
    @:tdfield
    static public function _scanNumber( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        var _tok = (0 : stdgo._internal.go.token.Token_token.Token);
        var _base = (10 : stdgo.GoInt);
        var _prefix = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _digsep = (0 : stdgo.GoInt);
        var _invalid = (-1 : stdgo.GoInt);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L423"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch != ((46 : stdgo.GoInt32))) {
            _tok = (5 : stdgo._internal.go.token.Token_token.Token);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L425"
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((48 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L426"
                _s._next();
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L427"
                {
                    final __value__ = stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw "null pointer dereference")._ch);
                    if (__value__ == ((120 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L429"
                        _s._next();
                        {
                            final __tmp__0 = (16 : stdgo.GoInt);
                            final __tmp__1 = (120 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((111 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L432"
                        _s._next();
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (111 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((98 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L435"
                        _s._next();
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
            _digsep = (_digsep | (_s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L446"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((46 : stdgo.GoInt32))) {
            _tok = (6 : stdgo._internal.go.token.Token_token.Token);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L448"
            if (((_prefix == (111 : stdgo.GoInt32)) || (_prefix == (98 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L449"
                _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, (("invalid radix point in " : stdgo.GoString) + stdgo._internal.go.scanner.Scanner__litname._litname(_prefix)?.__copy__() : stdgo.GoString)?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L451"
            _s._next();
            _digsep = (_digsep | (_s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L455"
        if ((_digsep & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L456"
            _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, (stdgo._internal.go.scanner.Scanner__litname._litname(_prefix) + (" has no digits" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L460"
        {
            var _e = (stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw "null pointer dereference")._ch) : stdgo.GoInt32);
            if (((_e == (101 : stdgo.GoInt32)) || (_e == (112 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L461"
                if (((_e == ((101 : stdgo.GoInt32)) && _prefix != ((0 : stdgo.GoInt32)) : Bool) && (_prefix != (48 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L463"
                    _s._errorf((@:checkr _s ?? throw "null pointer dereference")._offset, ("%q exponent requires decimal mantissa" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch));
                } else if (((_e == (112 : stdgo.GoInt32)) && (_prefix != (120 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L465"
                    _s._errorf((@:checkr _s ?? throw "null pointer dereference")._offset, ("%q exponent requires hexadecimal mantissa" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L467"
                _s._next();
                _tok = (6 : stdgo._internal.go.token.Token_token.Token);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L469"
                if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (43 : stdgo.GoInt32)) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (45 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L470"
                    _s._next();
                };
                var _ds = (_s._digits((10 : stdgo.GoInt), (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.GoInt);
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L474"
                if ((_ds & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L475"
                    _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("exponent has no digits" : stdgo.GoString));
                };
            } else if (((_prefix == (120 : stdgo.GoInt32)) && (_tok == (6 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L478"
                _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L482"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((105 : stdgo.GoInt32))) {
            _tok = (7 : stdgo._internal.go.token.Token_token.Token);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L484"
            _s._next();
        };
        var _lit = ((((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L488"
        if (((_tok == (5 : stdgo._internal.go.token.Token_token.Token)) && (_invalid >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L489"
            _s._errorf(_invalid, ("invalid digit %q in %s" : stdgo.GoString), stdgo.Go.toInterface(_lit[(_invalid - _offs : stdgo.GoInt)]), stdgo.Go.toInterface(stdgo._internal.go.scanner.Scanner__litname._litname(_prefix)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L491"
        if ((_digsep & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L492"
            {
                var _i = (stdgo._internal.go.scanner.Scanner__invalidsep._invalidSep(_lit?.__copy__()) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L493"
                    _s._error((_offs + _i : stdgo.GoInt), ("\'_\' must separate successive digits" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L497"
        return { _0 : _tok, _1 : _lit?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _digits( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _digsep = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L388"
        if ((_base <= (10 : stdgo.GoInt) : Bool)) {
            var _max = (((48 : stdgo.GoInt) + _base : stdgo.GoInt) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L390"
            while ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((@:checkr _s ?? throw "null pointer dereference")._ch) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L392"
                if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                } else if ((((@:checkr _s ?? throw "null pointer dereference")._ch >= _max : Bool) && (_invalid.value < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _invalid.value = (@:checkr _s ?? throw "null pointer dereference")._offset;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L398"
                _s._next();
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L401"
            while ((stdgo._internal.go.scanner.Scanner__ishex._isHex((@:checkr _s ?? throw "null pointer dereference")._ch) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L403"
                if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L407"
                _s._next();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L410"
        return _digsep;
    }
    @:keep
    @:tdfield
    static public function _scanIdentifier( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_8:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _rdOffset_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _offs_6 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L332"
                    if ((0i64 : stdgo.GoInt) < (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 4356943i64;
                    } else {
                        _gotoNext = 4356947i64;
                    };
                } else if (__value__ == (4356024i64)) {
                    _b_8 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(_rdOffset_7 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L333"
                    if (((((((97 : stdgo.GoUInt8) <= _b_8 : Bool) && (_b_8 <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b_8 : Bool) && (_b_8 <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b_8 == ((95 : stdgo.GoUInt8)) : Bool) || (((48 : stdgo.GoUInt8) <= _b_8 : Bool) && (_b_8 <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 4356112i64;
                    } else {
                        _gotoNext = 4356204i64;
                    };
                } else if (__value__ == (4356112i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L332"
                    _rdOffset_7++;
                    _gotoNext = 4356944i64;
                } else if (__value__ == (4356204i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._rdOffset + (_rdOffset_7) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L338"
                    if ((((0 : stdgo.GoUInt8) < _b_8 : Bool) && (_b_8 < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 4356259i64;
                    } else {
                        _gotoNext = 4356866i64;
                    };
                } else if (__value__ == (4356259i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._ch = (_b_8 : stdgo.GoInt32);
                    (@:checkr _s ?? throw "null pointer dereference")._offset = (@:checkr _s ?? throw "null pointer dereference")._rdOffset;
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L347"
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset++;
                    _gotoNext = 4357007i64;
                } else if (__value__ == (4356866i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L353"
                    _s._next();
                    0i64;
                    _gotoNext = 4356877i64;
                } else if (__value__ == (4356877i64)) {
                    //"file://#L0"
                    if ((stdgo._internal.go.scanner.Scanner__isletter._isLetter((@:checkr _s ?? throw "null pointer dereference")._ch) || stdgo._internal.go.scanner.Scanner__isdigit._isDigit((@:checkr _s ?? throw "null pointer dereference")._ch) : Bool)) {
                        _gotoNext = 4356913i64;
                    } else {
                        _gotoNext = 4356933i64;
                    };
                } else if (__value__ == (4356913i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L355"
                    _s._next();
                    _gotoNext = 4356877i64;
                } else if (__value__ == (4356933i64)) {
                    _gotoNext = 4357007i64;
                } else if (__value__ == (4356943i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(0i64 : stdgo.GoInt)];
                        _rdOffset_7 = @:binopAssign __tmp__0;
                        _b_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4356944i64;
                } else if (__value__ == (4356944i64)) {
                    //"file://#L0"
                    if (_rdOffset_7 < (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 4356024i64;
                    } else {
                        _gotoNext = 4356947i64;
                    };
                } else if (__value__ == (4356947i64)) {
                    (@:checkr _s ?? throw "null pointer dereference")._offset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
                    (@:checkr _s ?? throw "null pointer dereference")._ch = (-1 : stdgo.GoInt32);
                    _gotoNext = 4357007i64;
                } else if (__value__ == (4357007i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L364"
                    return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs_6, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _updateLineInfo( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _next:stdgo.GoInt, _offs:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L238"
        if (_text[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
            _text = (_text.__slice__(0, ((_text.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _text = (_text.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _offs = (_offs + ((7 : stdgo.GoInt)) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits(_text), _i:stdgo.GoInt = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L245"
        if (_i == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L246"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L250"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L252"
            _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L253"
            return;
        };
        {};
        var _line:stdgo.GoInt = (0 : stdgo.GoInt), _col:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _i2:stdgo.GoInt = __tmp__._0, _n2:stdgo.GoInt = __tmp__._1, _ok2:Bool = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L262"
        if (_ok2) {
            {
                final __tmp__0 = _i2;
                final __tmp__1 = _i;
                _i = @:binopAssign __tmp__0;
                _i2 = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _n2;
                final __tmp__1 = _n;
                _line = @:binopAssign __tmp__0;
                _col = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L266"
            if (((_col == (0 : stdgo.GoInt)) || (_col > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L267"
                _s._error((_offs + _i2 : stdgo.GoInt), (("invalid column number: " : stdgo.GoString) + ((_text.__slice__(_i2) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L268"
                return;
            };
            _text = (_text.__slice__(0, (_i2 - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _line = _n;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L276"
        if (((_line == (0 : stdgo.GoInt)) || (_line > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L277"
            _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L278"
            return;
        };
        var _filename = (((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L284"
        if (((_filename == (stdgo.Go.str() : stdgo.GoString)) && _ok2 : Bool)) {
            _filename = (@:checkr _s ?? throw "null pointer dereference")._file.position((@:checkr _s ?? throw "null pointer dereference")._file.pos(_offs)).filename?.__copy__();
        } else if (_filename != ((stdgo.Go.str() : stdgo.GoString))) {
            _filename = stdgo._internal.path.filepath.Filepath_clean.clean(_filename?.__copy__())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L291"
            if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs(_filename?.__copy__())) {
                _filename = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw "null pointer dereference")._dir?.__copy__(), _filename?.__copy__())?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L296"
        (@:checkr _s ?? throw "null pointer dereference")._file.addLineColumnInfo(_next, _filename?.__copy__(), _line, _col);
    }
    @:keep
    @:tdfield
    static public function _scanComment( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _numCR_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offs_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lit_5:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ch_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nlOffset_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _offs_0 = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _next_1 = (-1 : stdgo.GoInt);
                    _numCR_2 = (0 : stdgo.GoInt);
                    _nlOffset_3 = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L168"
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((47 : stdgo.GoInt32))) {
                        _gotoNext = 4351487i64;
                    } else {
                        _gotoNext = 4351830i64;
                    };
                } else if (__value__ == (4351487i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L171"
                    _s._next();
                    0i64;
                    _gotoNext = 4351581i64;
                } else if (__value__ == (4351581i64)) {
                    //"file://#L0"
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch != (10 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._ch >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4351611i64;
                    } else {
                        _gotoNext = 4351742i64;
                    };
                } else if (__value__ == (4351611i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L173"
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 4351632i64;
                    } else {
                        _gotoNext = 4351654i64;
                    };
                } else if (__value__ == (4351632i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L174"
                    _numCR_2++;
                    _gotoNext = 4351654i64;
                } else if (__value__ == (4351654i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L176"
                    _s._next();
                    _gotoNext = 4351581i64;
                } else if (__value__ == (4351742i64)) {
                    _next_1 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L180"
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 4351776i64;
                    } else {
                        _gotoNext = 4351794i64;
                    };
                } else if (__value__ == (4351776i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L181"
                    _next_1++;
                    _gotoNext = 4351794i64;
                } else if (__value__ == (4351794i64)) {
                    _gotoNext = 4352104i64;
                } else if (__value__ == (4351830i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L187"
                    _s._next();
                    0i64;
                    _gotoNext = 4351840i64;
                } else if (__value__ == (4351840i64)) {
                    //"file://#L0"
                    if (((@:checkr _s ?? throw "null pointer dereference")._ch >= (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4351854i64;
                    } else {
                        _gotoNext = 4352063i64;
                    };
                } else if (__value__ == (4351854i64)) {
                    _ch_4 = (@:checkr _s ?? throw "null pointer dereference")._ch;
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L190"
                    if (_ch_4 == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 4351885i64;
                    } else if (((_ch_4 == (10 : stdgo.GoInt32)) && (_nlOffset_3 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4351938i64;
                    } else {
                        _gotoNext = 4351969i64;
                    };
                } else if (__value__ == (4351885i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L191"
                    _numCR_2++;
                    _gotoNext = 4351969i64;
                } else if (__value__ == (4351938i64)) {
                    _nlOffset_3 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    _gotoNext = 4351969i64;
                } else if (__value__ == (4351969i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L195"
                    _s._next();
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L196"
                    if (((_ch_4 == (42 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._ch == (47 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4352008i64;
                    } else {
                        _gotoNext = 4351840i64;
                    };
                } else if (__value__ == (4352008i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L197"
                    _s._next();
                    _next_1 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    _gotoNext = 4352104i64;
                } else if (__value__ == (4352063i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L203"
                    _s._error(_offs_0, ("comment not terminated" : stdgo.GoString));
                    _gotoNext = 4352104i64;
                } else if (__value__ == (4352104i64)) {
                    _lit_5 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs_0, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L213"
                    if (((((_numCR_2 > (0 : stdgo.GoInt) : Bool) && ((_lit_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && _lit_5[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && (_lit_5[((_lit_5.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4352467i64;
                    } else {
                        _gotoNext = 4352611i64;
                    };
                } else if (__value__ == (4352467i64)) {
                    _lit_5 = (_lit_5.__slice__(0, ((_lit_5.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L215"
                    _numCR_2--;
                    _gotoNext = 4352611i64;
                } else if (__value__ == (4352611i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L220"
                    if ((((_next_1 >= (0 : stdgo.GoInt) : Bool) && (((_lit_5[(1 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) || (_offs_0 == (@:checkr _s ?? throw "null pointer dereference")._lineOffset) : Bool)) : Bool) && stdgo._internal.bytes.Bytes_hasprefix.hasPrefix((_lit_5.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.go.scanner.Scanner__prefix._prefix) : Bool)) {
                        _gotoNext = 4352731i64;
                    } else {
                        _gotoNext = 4352774i64;
                    };
                } else if (__value__ == (4352731i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L221"
                    _s._updateLineInfo(_next_1, _offs_0, _lit_5);
                    _gotoNext = 4352774i64;
                } else if (__value__ == (4352774i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L224"
                    if ((_numCR_2 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4352787i64;
                    } else {
                        _gotoNext = 4352830i64;
                    };
                } else if (__value__ == (4352787i64)) {
                    _lit_5 = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit_5, _lit_5[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)));
                    _gotoNext = 4352830i64;
                } else if (__value__ == (4352830i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L228"
                    return { _0 : (_lit_5 : stdgo.GoString)?.__copy__(), _1 : _nlOffset_3 };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L155"
        _s._error(_offs, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _msg:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L148"
        if ((@:checkr _s ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L149"
            (@:checkr _s ?? throw "null pointer dereference")._err((@:checkr _s ?? throw "null pointer dereference")._file.position((@:checkr _s ?? throw "null pointer dereference")._file.pos(_offs))?.__copy__(), _msg?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L151"
        (@:checkr _s ?? throw "null pointer dereference").errorCount++;
    }
    @:keep
    @:tdfield
    static public function init( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _src:stdgo.Slice<stdgo.GoUInt8>, _err:stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler, _mode:stdgo._internal.go.scanner.Scanner_mode.Mode):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L125"
        if (_file.size() != ((_src.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L126"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file size (%d) does not match src len (%d)" : stdgo.GoString), stdgo.Go.toInterface(_file.size()), stdgo.Go.toInterface((_src.length))));
        };
        (@:checkr _s ?? throw "null pointer dereference")._file = _file;
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_file.name()?.__copy__());
            (@:checkr _s ?? throw "null pointer dereference")._dir = @:tmpset0 __tmp__._0?.__copy__();
        };
        (@:checkr _s ?? throw "null pointer dereference")._src = _src;
        (@:checkr _s ?? throw "null pointer dereference")._err = _err;
        (@:checkr _s ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _s ?? throw "null pointer dereference")._ch = (32 : stdgo.GoInt32);
        (@:checkr _s ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._rdOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
        (@:checkr _s ?? throw "null pointer dereference").errorCount = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L141"
        _s._next();
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L142"
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((65279 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L143"
            _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoUInt8 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L94"
        if (((@:checkr _s ?? throw "null pointer dereference")._rdOffset < ((@:checkr _s ?? throw "null pointer dereference")._src.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L95"
            return (@:checkr _s ?? throw "null pointer dereference")._src[((@:checkr _s ?? throw "null pointer dereference")._rdOffset : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L97"
        return (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _next( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L60"
        if (((@:checkr _s ?? throw "null pointer dereference")._rdOffset < ((@:checkr _s ?? throw "null pointer dereference")._src.length) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._offset = (@:checkr _s ?? throw "null pointer dereference")._rdOffset;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L62"
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (@:checkr _s ?? throw "null pointer dereference")._offset;
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L64"
                (@:checkr _s ?? throw "null pointer dereference")._file.addLine((@:checkr _s ?? throw "null pointer dereference")._offset);
            };
            var __0 = ((@:checkr _s ?? throw "null pointer dereference")._src[((@:checkr _s ?? throw "null pointer dereference")._rdOffset : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _w = __1, _r = __0;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L67"
            if (_r == ((0 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L69"
                _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal character NUL" : stdgo.GoString));
            } else if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L73"
                if (((_r == (65533 : stdgo.GoInt32)) && (_w == (1 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L74"
                    _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal UTF-8 encoding" : stdgo.GoString));
                } else if (((_r == (65279 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._offset > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L76"
                    _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal byte order mark" : stdgo.GoString));
                };
            };
            (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._rdOffset + (_w) : stdgo.GoInt);
            (@:checkr _s ?? throw "null pointer dereference")._ch = _r;
        } else {
            (@:checkr _s ?? throw "null pointer dereference")._offset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L83"
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (@:checkr _s ?? throw "null pointer dereference")._offset;
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L85"
                (@:checkr _s ?? throw "null pointer dereference")._file.addLine((@:checkr _s ?? throw "null pointer dereference")._offset);
            };
            (@:checkr _s ?? throw "null pointer dereference")._ch = (-1 : stdgo.GoInt32);
        };
    }
}
