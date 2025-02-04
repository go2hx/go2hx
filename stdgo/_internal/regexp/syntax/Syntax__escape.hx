package stdgo._internal.regexp.syntax;
function _escape(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _r:stdgo.GoInt32, _force:Bool):Void {
        if (stdgo._internal.unicode.Unicode_isprint.isPrint(_r)) {
            if ((stdgo._internal.strings.Strings_containsrune.containsRune(("\\.+*?()|[]{}^$" : stdgo.GoString), _r) || _force : Bool)) {
                @:check2r _b.writeRune((92 : stdgo.GoInt32));
            };
            @:check2r _b.writeRune(_r);
            return;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\a" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\f" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\n" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\r" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\t" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((11 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\v" : stdgo.GoString));
                        break;
                    } else {
                        if ((_r < (256 : stdgo.GoInt32) : Bool)) {
                            @:check2r _b.writeString(("\\x" : stdgo.GoString));
                            var _s = (stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                            if ((_s.length) == ((1 : stdgo.GoInt))) {
                                @:check2r _b.writeRune((48 : stdgo.GoInt32));
                            };
                            @:check2r _b.writeString(_s?.__copy__());
                            break;
                        };
                        @:check2r _b.writeString(("\\x{" : stdgo.GoString));
                        @:check2r _b.writeString(stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__());
                        @:check2r _b.writeString(("}" : stdgo.GoString));
                    };
                };
                break;
            };
        };
    }
