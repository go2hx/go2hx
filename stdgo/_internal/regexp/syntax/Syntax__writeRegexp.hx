package stdgo._internal.regexp.syntax;
function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("[^\\x00-\\x{10FFFF}]" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("(?:)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        if ((_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _b.writeString(("(?i:" : stdgo.GoString));
                        };
                        for (__1 => _r in _re.rune) {
                            stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _r, false);
                        };
                        if ((_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _b.writeString((")" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        if (((_re.rune.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            _b.writeString(("[invalid char class]" : stdgo.GoString));
                            break;
                        };
                        _b.writeRune((91 : stdgo.GoInt32));
                        if ((_re.rune.length) == ((0 : stdgo.GoInt))) {
                            _b.writeString(("^\\x00-\\x{10FFFF}" : stdgo.GoString));
                        } else if (((_re.rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) && _re.rune[((_re.rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((1114111 : stdgo.GoInt32)) : Bool) && ((_re.rune.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _b.writeRune((94 : stdgo.GoInt32));
                            {
                                var _i = (1 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < ((_re.rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                                    var __0 = (_re.rune[(_i : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (_re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
var _hi = __1, _lo = __0;
                                    stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : stdgo.GoInt32));
                                        stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                });
                            };
                        } else {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (_re.rune.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                                    var __0 = (_re.rune[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = (_re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
                                    stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : stdgo.GoInt32));
                                        stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                });
                            };
                        };
                        _b.writeRune((93 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("(?-s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("(?s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("(?m:^)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("(?m:$)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("\\A" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        if ((_re.flags & (256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _b.writeString(("(?-m:$)" : stdgo.GoString));
                        } else {
                            _b.writeString(("\\z" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("\\b" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        _b.writeString(("\\B" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        if (_re.name != (stdgo.Go.str())) {
                            _b.writeString(("(?P<" : stdgo.GoString));
                            _b.writeString(_re.name?.__copy__());
                            _b.writeRune((62 : stdgo.GoInt32));
                        } else {
                            _b.writeRune((40 : stdgo.GoInt32));
                        };
                        if (_re.sub[(0 : stdgo.GoInt)].op != ((2 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                            stdgo._internal.regexp.syntax.Syntax__writeRegexp._writeRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
                        };
                        _b.writeRune((41 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        {
                            var _sub = _re.sub[(0 : stdgo.GoInt)];
                            if (((_sub.op > (13 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool) || (_sub.op == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((_sub.rune.length) > (1 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                                _b.writeString(("(?:" : stdgo.GoString));
                                stdgo._internal.regexp.syntax.Syntax__writeRegexp._writeRegexp(_b, _sub);
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                stdgo._internal.regexp.syntax.Syntax__writeRegexp._writeRegexp(_b, _sub);
                            };
                        };
                        {
                            final __value__ = _re.op;
                            if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                                _b.writeRune((42 : stdgo.GoInt32));
                            } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                                _b.writeRune((43 : stdgo.GoInt32));
                            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                                _b.writeRune((63 : stdgo.GoInt32));
                            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                                _b.writeRune((123 : stdgo.GoInt32));
                                _b.writeString(stdgo._internal.strconv.Strconv_itoa.itoa(_re.min)?.__copy__());
                                if (_re.max != (_re.min)) {
                                    _b.writeRune((44 : stdgo.GoInt32));
                                    if ((_re.max >= (0 : stdgo.GoInt) : Bool)) {
                                        _b.writeString(stdgo._internal.strconv.Strconv_itoa.itoa(_re.max)?.__copy__());
                                    };
                                };
                                _b.writeRune((125 : stdgo.GoInt32));
                            };
                        };
                        if ((_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _b.writeRune((63 : stdgo.GoInt32));
                        };
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        for (__1 => _sub in _re.sub) {
                            if (_sub.op == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                                _b.writeString(("(?:" : stdgo.GoString));
                                stdgo._internal.regexp.syntax.Syntax__writeRegexp._writeRegexp(_b, _sub);
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                stdgo._internal.regexp.syntax.Syntax__writeRegexp._writeRegexp(_b, _sub);
                            };
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                        for (_i => _sub in _re.sub) {
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                _b.writeRune((124 : stdgo.GoInt32));
                            };
                            stdgo._internal.regexp.syntax.Syntax__writeRegexp._writeRegexp(_b, _sub);
                        };
                        break;
                    } else {
                        _b.writeString(((("<invalid op" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_re.op : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    };
                };
                break;
            };
        };
    }
