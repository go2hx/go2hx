package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function example_is():Void {
        {};
        for (__0 => _c in ("\x085Ὂg̀9! ℃ᾭG" : stdgo.GoString)) {
            stdgo._internal.fmt.Fmt_printf.printf(("For %q:\n" : stdgo.GoString), stdgo.Go.toInterface(_c));
            if (stdgo._internal.unicode.Unicode_isControl.isControl(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis control rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isDigit.isDigit(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis digit rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isGraphic.isGraphic(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis graphic rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isLetter.isLetter(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis letter rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isLower.isLower(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis lower case rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isMark.isMark(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis mark rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isNumber.isNumber(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis number rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isPrint.isPrint(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis printable rune" : stdgo.GoString)));
            };
            if (!stdgo._internal.unicode.Unicode_isPrint.isPrint(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis not printable rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isPunct.isPunct(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis punct rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isSpace.isSpace(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis space rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isSymbol.isSymbol(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis symbol rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isTitle.isTitle(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis title case rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode_isUpper.isUpper(_c)) {
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("\tis upper case rune" : stdgo.GoString)));
            };
        };
    }
