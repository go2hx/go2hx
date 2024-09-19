package stdgo._internal.regexp.syntax;
function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Void {
        if ((((_re.op : stdgo.GoInt) >= (stdgo._internal.regexp.syntax.Syntax__opNames._opNames.length) : Bool) || (stdgo._internal.regexp.syntax.Syntax__opNames._opNames[(_re.op : stdgo.GoInt)] == stdgo.Go.str()) : Bool)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("op%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re.op)));
        } else {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _re.op;
                        if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                            if ((_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                                _b.writeByte((110 : stdgo.GoUInt8));
                            };
                            _b.writeString(stdgo._internal.regexp.syntax.Syntax__opNames._opNames[(_re.op : stdgo.GoInt)]?.__copy__());
                            break;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                            if (((_re.rune.length) > (1 : stdgo.GoInt) : Bool)) {
                                _b.writeString(("str" : stdgo.GoString));
                            } else {
                                _b.writeString(("lit" : stdgo.GoString));
                            };
                            if ((_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                                for (__1 => _r in _re.rune) {
                                    if (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r) != (_r)) {
                                        _b.writeString(("fold" : stdgo.GoString));
                                        break;
                                    };
                                };
                            };
                            break;
                        } else {
                            _b.writeString(stdgo._internal.regexp.syntax.Syntax__opNames._opNames[(_re.op : stdgo.GoInt)]?.__copy__());
                        };
                    };
                    break;
                };
            };
        };
        _b.writeByte((123 : stdgo.GoUInt8));
        {
            final __value__ = _re.op;
            if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if ((_re.flags & (256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                    _b.writeString(("\\z" : stdgo.GoString));
                };
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                for (__1 => _r in _re.rune) {
                    _b.writeRune(_r);
                };
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                for (__1 => _sub in _re.sub) {
                    stdgo._internal.regexp.syntax.Syntax__dumpRegexp._dumpRegexp(_b, _sub);
                };
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                stdgo._internal.regexp.syntax.Syntax__dumpRegexp._dumpRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%d,%d " : stdgo.GoString), stdgo.Go.toInterface(_re.min), stdgo.Go.toInterface(_re.max));
                stdgo._internal.regexp.syntax.Syntax__dumpRegexp._dumpRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                if (_re.name != (stdgo.Go.str())) {
                    _b.writeString(_re.name?.__copy__());
                    _b.writeByte((58 : stdgo.GoUInt8));
                };
                stdgo._internal.regexp.syntax.Syntax__dumpRegexp._dumpRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _sep = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_re.rune.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        _b.writeString(_sep?.__copy__());
                        _sep = (" " : stdgo.GoString);
                        var __0 = (_re.rune[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = (_re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
                        if (_lo == (_hi)) {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo));
                        } else {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%#x-%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
                        };
                    });
                };
            };
        };
        _b.writeByte((125 : stdgo.GoUInt8));
    }
