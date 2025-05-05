package stdgo._internal.regexp.syntax;
function _escape(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _r:stdgo.GoInt32, _force:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L255"
        if (stdgo._internal.unicode.Unicode_isprint.isPrint(_r)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L256"
            if ((stdgo._internal.strings.Strings_containsrune.containsRune(("\\.+*?()|[]{}^$" : stdgo.GoString), _r) || _force : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L257"
                _b.writeRune((92 : stdgo.GoInt32));
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L259"
            _b.writeRune(_r);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L260"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L263"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L265"
                        _b.writeString(("\\a" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L267"
                        _b.writeString(("\\f" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L269"
                        _b.writeString(("\\n" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L271"
                        _b.writeString(("\\r" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L273"
                        _b.writeString(("\\t" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((11 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L275"
                        _b.writeString(("\\v" : stdgo.GoString));
                        break;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L277"
                        if ((_r < (256 : stdgo.GoInt32) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L278"
                            _b.writeString(("\\x" : stdgo.GoString));
                            var _s = (stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L280"
                            if ((_s.length) == ((1 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L281"
                                _b.writeRune((48 : stdgo.GoInt32));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L283"
                            _b.writeString(_s?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L284"
                            break;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L286"
                        _b.writeString(("\\x{" : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L287"
                        _b.writeString(stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/regexp.go#L288"
                        _b.writeString(("}" : stdgo.GoString));
                    };
                };
                break;
            };
        };
    }
