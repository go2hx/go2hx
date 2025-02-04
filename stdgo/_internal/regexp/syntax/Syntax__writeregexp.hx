package stdgo._internal.regexp.syntax;
function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
                    if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("[^\\x00-\\x{10FFFF}]" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("(?:)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        if (((@:checkr _re ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            @:check2r _b.writeString(("(?i:" : stdgo.GoString));
                        };
                        for (__1 => _r in (@:checkr _re ?? throw "null pointer dereference").rune) {
                            stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _r, false);
                        };
                        if (((@:checkr _re ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            @:check2r _b.writeString((")" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        if ((((@:checkr _re ?? throw "null pointer dereference").rune.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            @:check2r _b.writeString(("[invalid char class]" : stdgo.GoString));
                            break;
                        };
                        @:check2r _b.writeRune((91 : stdgo.GoInt32));
                        if (((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((0 : stdgo.GoInt))) {
                            @:check2r _b.writeString(("^\\x00-\\x{10FFFF}" : stdgo.GoString));
                        } else if ((((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) && (@:checkr _re ?? throw "null pointer dereference").rune[(((@:checkr _re ?? throw "null pointer dereference").rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((1114111 : stdgo.GoInt32)) : Bool) && (((@:checkr _re ?? throw "null pointer dereference").rune.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
                            @:check2r _b.writeRune((94 : stdgo.GoInt32));
                            {
                                var _i = (1 : stdgo.GoInt);
                                while ((_i < (((@:checkr _re ?? throw "null pointer dereference").rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                    var __0 = ((@:checkr _re ?? throw "null pointer dereference").rune[(_i : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32), __1 = ((@:checkr _re ?? throw "null pointer dereference").rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
var _hi = __1, _lo = __0;
stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
if (_lo != (_hi)) {
                                        @:check2r _b.writeRune((45 : stdgo.GoInt32));
                                        stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        } else {
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < ((@:checkr _re ?? throw "null pointer dereference").rune.length) : Bool)) {
                                    var __0 = ((@:checkr _re ?? throw "null pointer dereference").rune[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = ((@:checkr _re ?? throw "null pointer dereference").rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
if (_lo != (_hi)) {
                                        @:check2r _b.writeRune((45 : stdgo.GoInt32));
                                        stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        };
                        @:check2r _b.writeRune((93 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("(?-s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("(?s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("(?m:^)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("(?m:$)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("\\A" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        if (((@:checkr _re ?? throw "null pointer dereference").flags & (256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            @:check2r _b.writeString(("(?-m:$)" : stdgo.GoString));
                        } else {
                            @:check2r _b.writeString(("\\z" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((11 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("\\b" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        @:check2r _b.writeString(("\\B" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        if ((@:checkr _re ?? throw "null pointer dereference").name != ((stdgo.Go.str() : stdgo.GoString))) {
                            @:check2r _b.writeString(("(?P<" : stdgo.GoString));
                            @:check2r _b.writeString((@:checkr _re ?? throw "null pointer dereference").name?.__copy__());
                            @:check2r _b.writeRune((62 : stdgo.GoInt32));
                        } else {
                            @:check2r _b.writeRune((40 : stdgo.GoInt32));
                        };
                        if ((@:checkr (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").op != ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                            stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
                        };
                        @:check2r _b.writeRune((41 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        {
                            var _sub = (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)];
                            if ((((@:checkr _sub ?? throw "null pointer dereference").op > (13 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool) || ((@:checkr _sub ?? throw "null pointer dereference").op == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _sub ?? throw "null pointer dereference").rune.length) > (1 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                                @:check2r _b.writeString(("(?:" : stdgo.GoString));
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                                @:check2r _b.writeString((")" : stdgo.GoString));
                            } else {
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                            };
                        };
                        {
                            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
                            if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                @:check2r _b.writeRune((42 : stdgo.GoInt32));
                            } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                @:check2r _b.writeRune((43 : stdgo.GoInt32));
                            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                @:check2r _b.writeRune((63 : stdgo.GoInt32));
                            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                @:check2r _b.writeRune((123 : stdgo.GoInt32));
                                @:check2r _b.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _re ?? throw "null pointer dereference").min)?.__copy__());
                                if ((@:checkr _re ?? throw "null pointer dereference").max != ((@:checkr _re ?? throw "null pointer dereference").min)) {
                                    @:check2r _b.writeRune((44 : stdgo.GoInt32));
                                    if (((@:checkr _re ?? throw "null pointer dereference").max >= (0 : stdgo.GoInt) : Bool)) {
                                        @:check2r _b.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _re ?? throw "null pointer dereference").max)?.__copy__());
                                    };
                                };
                                @:check2r _b.writeRune((125 : stdgo.GoInt32));
                            };
                        };
                        if (((@:checkr _re ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            @:check2r _b.writeRune((63 : stdgo.GoInt32));
                        };
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                            if ((@:checkr _sub ?? throw "null pointer dereference").op == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                @:check2r _b.writeString(("(?:" : stdgo.GoString));
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                                @:check2r _b.writeString((")" : stdgo.GoString));
                            } else {
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                            };
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        for (_i => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                @:check2r _b.writeRune((124 : stdgo.GoInt32));
                            };
                            stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                        };
                        break;
                    } else {
                        @:check2r _b.writeString(((("<invalid op" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(((@:checkr _re ?? throw "null pointer dereference").op : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    };
                };
                break;
            };
        };
    }
