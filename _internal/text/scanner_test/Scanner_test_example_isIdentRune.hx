package _internal.text.scanner_test;
function example_isIdentRune():Void {
        {};
        var _s:stdgo._internal.text.scanner.Scanner_Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("%var1 var2%" : stdgo.GoString))));
        _s.position.filename = ("default" : stdgo.GoString);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_s.tokenText()));
            });
        };
        stdgo._internal.fmt.Fmt_println.println();
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("%var1 var2%" : stdgo.GoString))));
        _s.position.filename = ("percent" : stdgo.GoString);
        _s.isIdentRune = function(_ch:stdgo.GoInt32, _i:stdgo.GoInt):Bool {
            return (((_ch == ((37 : stdgo.GoInt32)) && _i == ((0 : stdgo.GoInt)) : Bool) || stdgo._internal.unicode.Unicode_isLetter.isLetter(_ch) : Bool) || (stdgo._internal.unicode.Unicode_isDigit.isDigit(_ch) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) : Bool);
        };
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_s.tokenText()));
            });
        };
    }
