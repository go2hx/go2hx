package stdgo._internal.text.scanner;
function testIssue50909(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s:stdgo._internal.text.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L919"
        _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("hello \n\nworld\n!\n" : stdgo.GoString))));
        _s.isIdentRune = function(_ch:stdgo.GoInt32, __0:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L920"
            return _ch != ((10 : stdgo.GoInt32));
        };
        var _r = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L924"
        while (((_s.scan() != (-1 : stdgo.GoInt32)) && (_n < (10 : stdgo.GoInt) : Bool) : Bool)) {
            _r = (_r + (_s.tokenText())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L926"
            _n++;
        };
        {};
        {};
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L931"
        if (((_r != ("hello world!" : stdgo.GoString)) || (_n != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L932"
            _t.errorf(("got %q (n = %d); want %q (n = %d)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(("hello world!" : stdgo.GoString)), stdgo.Go.toInterface((3 : stdgo.GoInt)));
        };
    }
