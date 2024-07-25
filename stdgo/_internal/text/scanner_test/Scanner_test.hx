package stdgo._internal.text.scanner_test;
import stdgo._internal.text.scanner.Scanner;
function example():Void {
        {};
        var _s:stdgo._internal.text.scanner.Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n// This is scanned code.\nif a > 10 {\n\tsomeParsable = text\n}" : stdgo.GoString))));
        _s.position.filename = ("example" : stdgo.GoString);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                stdgo._internal.fmt.Fmt.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_s.tokenText()));
            });
        };
    }
function example_isIdentRune():Void {
        {};
        var _s:stdgo._internal.text.scanner.Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("%var1 var2%" : stdgo.GoString))));
        _s.position.filename = ("default" : stdgo.GoString);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                stdgo._internal.fmt.Fmt.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_s.tokenText()));
            });
        };
        stdgo._internal.fmt.Fmt.println();
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("%var1 var2%" : stdgo.GoString))));
        _s.position.filename = ("percent" : stdgo.GoString);
        _s.isIdentRune = function(_ch:stdgo.GoRune, _i:stdgo.GoInt):Bool {
            return (((_ch == ((37 : stdgo.GoInt32)) && _i == ((0 : stdgo.GoInt)) : Bool) || stdgo._internal.unicode.Unicode.isLetter(_ch) : Bool) || (stdgo._internal.unicode.Unicode.isDigit(_ch) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) : Bool);
        };
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                stdgo._internal.fmt.Fmt.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_s.tokenText()));
            });
        };
    }
function example_mode():Void {
        {};
        var _s:stdgo._internal.text.scanner.Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n    // Comment begins at column 5.\n\nThis line should not be included in the output.\n\n/*\nThis multiline comment\nshould be extracted in\nits entirety.\n*/\n" : stdgo.GoString))));
        _s.position.filename = ("comments" : stdgo.GoString);
        _s.mode = (_s.mode ^ ((512u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                var _txt = (_s.tokenText()?.__copy__() : stdgo.GoString);
                if ((stdgo._internal.strings.Strings.hasPrefix(_txt?.__copy__(), ("//" : stdgo.GoString)) || stdgo._internal.strings.Strings.hasPrefix(_txt?.__copy__(), ("/*" : stdgo.GoString)) : Bool)) {
                    stdgo._internal.fmt.Fmt.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_txt));
                };
            });
        };
    }
function example_whitespace():Void {
        {};
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo._internal.text.scanner.Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner.Scanner), __3:stdgo.GoArray<stdgo.GoArray<stdgo.GoString>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoString>>(4, 4, ...[for (i in 0 ... 4) new stdgo.GoArray<stdgo.GoString>(4, 4, ...[for (i in 0 ... 4) ("" : stdgo.GoString)])]);
var _tsv = __3, _s = __2, _row = __1, _col = __0;
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("aa\tab\tac\tad\nba\tbb\tbc\tbd\nca\tcb\tcc\tcd\nda\tdb\tdc\tdd" : stdgo.GoString))));
        _s.whitespace = (_s.whitespace ^ ((1536i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                {
                    final __value__ = _tok;
                    if (__value__ == ((10 : stdgo.GoInt32))) {
                        _row++;
                        _col = (0 : stdgo.GoInt);
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        _col++;
                    } else {
                        _tsv[(_row : stdgo.GoInt)][(_col : stdgo.GoInt)] = _s.tokenText()?.__copy__();
                    };
                };
            });
        };
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_tsv));
    }
