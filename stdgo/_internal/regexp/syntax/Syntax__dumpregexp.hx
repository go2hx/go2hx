package stdgo._internal.regexp.syntax;
function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        if (((((@:checkr _re ?? throw "null pointer dereference").op : stdgo.GoInt) >= (stdgo._internal.regexp.syntax.Syntax__opnames._opNames.length) : Bool) || (stdgo._internal.regexp.syntax.Syntax__opnames._opNames[((@:checkr _re ?? throw "null pointer dereference").op : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("op%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _re ?? throw "null pointer dereference").op)));
        } else {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
                        if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                            if (((@:checkr _re ?? throw "null pointer dereference").flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                                @:check2r _b.writeByte((110 : stdgo.GoUInt8));
                            };
                            @:check2r _b.writeString(stdgo._internal.regexp.syntax.Syntax__opnames._opNames[((@:checkr _re ?? throw "null pointer dereference").op : stdgo.GoInt)]?.__copy__());
                            break;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                            if ((((@:checkr _re ?? throw "null pointer dereference").rune.length) > (1 : stdgo.GoInt) : Bool)) {
                                @:check2r _b.writeString(("str" : stdgo.GoString));
                            } else {
                                @:check2r _b.writeString(("lit" : stdgo.GoString));
                            };
                            if (((@:checkr _re ?? throw "null pointer dereference").flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                                for (__1 => _r in (@:checkr _re ?? throw "null pointer dereference").rune) {
                                    if (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r) != (_r)) {
                                        @:check2r _b.writeString(("fold" : stdgo.GoString));
                                        break;
                                    };
                                };
                            };
                            break;
                        } else {
                            @:check2r _b.writeString(stdgo._internal.regexp.syntax.Syntax__opnames._opNames[((@:checkr _re ?? throw "null pointer dereference").op : stdgo.GoInt)]?.__copy__());
                        };
                    };
                    break;
                };
            };
        };
        @:check2r _b.writeByte((123 : stdgo.GoUInt8));
        {
            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
            if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if (((@:checkr _re ?? throw "null pointer dereference").flags & (256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                    @:check2r _b.writeString(("\\z" : stdgo.GoString));
                };
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                for (__1 => _r in (@:checkr _re ?? throw "null pointer dereference").rune) {
                    @:check2r _b.writeRune(_r);
                };
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
                    stdgo._internal.regexp.syntax.Syntax__dumpregexp._dumpRegexp(_b, _sub);
                };
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                stdgo._internal.regexp.syntax.Syntax__dumpregexp._dumpRegexp(_b, (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%d,%d " : stdgo.GoString), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference").min), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference").max));
                stdgo._internal.regexp.syntax.Syntax__dumpregexp._dumpRegexp(_b, (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                if ((@:checkr _re ?? throw "null pointer dereference").name != ((stdgo.Go.str() : stdgo.GoString))) {
                    @:check2r _b.writeString((@:checkr _re ?? throw "null pointer dereference").name?.__copy__());
                    @:check2r _b.writeByte((58 : stdgo.GoUInt8));
                };
                stdgo._internal.regexp.syntax.Syntax__dumpregexp._dumpRegexp(_b, (@:checkr _re ?? throw "null pointer dereference").sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _sep = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < ((@:checkr _re ?? throw "null pointer dereference").rune.length) : Bool)) {
                        @:check2r _b.writeString(_sep.__copy__());
_sep = (" " : stdgo.GoString);
var __0 = ((@:checkr _re ?? throw "null pointer dereference").rune[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = ((@:checkr _re ?? throw "null pointer dereference").rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
if (_lo == (_hi)) {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo));
                        } else {
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%#x-%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
                        };
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            };
        };
        @:check2r _b.writeByte((125 : stdgo.GoUInt8));
    }
