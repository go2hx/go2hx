package _internal.text.scanner_test;
function example():Void {
        {};
        var _s:stdgo._internal.text.scanner.Scanner_Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner_Scanner.Scanner);
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("\n// This is scanned code.\nif a > 10 {\n\tsomeParsable = text\n}" : stdgo.GoString))));
        _s.position.filename = ("example" : stdgo.GoString);
        {
            var _tok = (_s.scan() : stdgo.GoInt32);
            stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
                stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_s.tokenText()));
            });
        };
    }
