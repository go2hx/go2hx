package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
@:keep var __init_go2hx__ = {
        try {
            if (false) {
                throw stdgo.Go.toInterface(("utf8.MaxRune is wrong" : stdgo.GoString));
            };
            if (false) {
                throw stdgo.Go.toInterface(("utf8.RuneError is wrong" : stdgo.GoString));
            };
            {};
            var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_b.len() < (100000 : stdgo.GoInt) : Bool), _i++, {
                    if ((_i % (100 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _b.writeString(("日本語日本語日本語日" : stdgo.GoString));
                    } else {
                        _b.writeString(("0123456789" : stdgo.GoString));
                    };
                });
            };
            _internal.unicode.utf8_test.Utf8_test__longStringMostlyASCII._longStringMostlyASCII = (_b.string() : stdgo.GoString)?.__copy__();
            _internal.unicode.utf8_test.Utf8_test__longStringJapanese._longStringJapanese = stdgo._internal.strings.Strings_repeat.repeat(("日本語日本語日本語日" : stdgo.GoString), (3333 : stdgo.GoInt))?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
