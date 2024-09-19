package _internal.text.scanner_test;
function example_mode():Void {
        {};
        var _s:stdgo._internal.text.scanner.Scanner_Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("\n    // Comment begins at column 5.\n\nThis line should not be included in the output.\n\n/*\nThis multiline comment\nshould be extracted in\nits entirety.\n*/\n" : stdgo.GoString))));
        _s.position.filename = ("comments" : stdgo.GoString);
        _s.mode = (_s.mode ^ ((512u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                var _txt = (_s.tokenText()?.__copy__() : stdgo.GoString);
                if ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_txt?.__copy__(), ("//" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_txt?.__copy__(), ("/*" : stdgo.GoString)) : Bool)) {
                    stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_txt));
                };
            });
        };
    }
