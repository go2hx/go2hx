package stdgo._internal.text.scanner;
function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L483"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str(0) : stdgo.GoString)?.__copy__(), ("<input>:1:1" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (0 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L484"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str(128) : stdgo.GoString)?.__copy__(), ("<input>:1:1" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (65533 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L485"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str(255) : stdgo.GoString)?.__copy__(), ("<input>:1:1" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (65533 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L487"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("a", 0) : stdgo.GoString)?.__copy__(), ("<input>:1:2" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (-2 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L488"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("ab", 128) : stdgo.GoString)?.__copy__(), ("<input>:1:3" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-2 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L489"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("abc", 255) : stdgo.GoString)?.__copy__(), ("<input>:1:4" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-2 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L491"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("\"a", 0) : stdgo.GoString)?.__copy__(), ("<input>:1:3" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (-6 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L492"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("\"ab", 128) : stdgo.GoString)?.__copy__(), ("<input>:1:4" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-6 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L493"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("\"abc", 255) : stdgo.GoString)?.__copy__(), ("<input>:1:5" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-6 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L495"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("`a", 0) : stdgo.GoString)?.__copy__(), ("<input>:1:3" : stdgo.GoString), ("invalid character NUL" : stdgo.GoString), (-7 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L496"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("`ab", 128) : stdgo.GoString)?.__copy__(), ("<input>:1:4" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-7 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L497"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, (stdgo.Go.str("`abc", 255) : stdgo.GoString)?.__copy__(), ("<input>:1:5" : stdgo.GoString), ("invalid UTF-8 encoding" : stdgo.GoString), (-7 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L499"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("\'\\\"\'" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("invalid char escape" : stdgo.GoString), (-5 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L500"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("\"\\\'\"" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("invalid char escape" : stdgo.GoString), (-6 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L502"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("01238" : stdgo.GoString), ("<input>:1:6" : stdgo.GoString), ("invalid digit \'8\' in octal literal" : stdgo.GoString), (-3 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L503"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("01238123" : stdgo.GoString), ("<input>:1:9" : stdgo.GoString), ("invalid digit \'8\' in octal literal" : stdgo.GoString), (-3 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L504"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("0x" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("hexadecimal literal has no digits" : stdgo.GoString), (-3 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L505"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("0xg" : stdgo.GoString), ("<input>:1:3" : stdgo.GoString), ("hexadecimal literal has no digits" : stdgo.GoString), (-3 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L506"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("\'aa\'" : stdgo.GoString), ("<input>:1:4" : stdgo.GoString), ("invalid char literal" : stdgo.GoString), (-5 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L507"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("1.5e" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L508"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("1.5E" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L509"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("1.5e+" : stdgo.GoString), ("<input>:1:6" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L510"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("1.5e-" : stdgo.GoString), ("<input>:1:6" : stdgo.GoString), ("exponent has no digits" : stdgo.GoString), (-4 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L512"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("\'" : stdgo.GoString), ("<input>:1:2" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-5 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L513"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("\'\n" : stdgo.GoString), ("<input>:1:2" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-5 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L514"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("\"abc" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-6 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L515"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("\"abc\n" : stdgo.GoString), ("<input>:1:5" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-6 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L516"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("`abc\n" : stdgo.GoString), ("<input>:2:1" : stdgo.GoString), ("literal not terminated" : stdgo.GoString), (-7 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L517"
        stdgo._internal.text.scanner.Scanner__testerror._testError(_t, ("/*/" : stdgo.GoString), ("<input>:1:4" : stdgo.GoString), ("comment not terminated" : stdgo.GoString), (-1 : stdgo.GoInt32));
    }
