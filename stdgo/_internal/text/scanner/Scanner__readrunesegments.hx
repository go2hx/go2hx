package stdgo._internal.text.scanner;
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void {
        var _got = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = (stdgo._internal.strings.Strings_join.join(_segments, (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : stdgo._internal.text.scanner.Scanner_stringreader.StringReader)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_stringreader.StringReader>)));
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L37"
        while (true) {
            var _ch = (_s.next() : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L39"
            if (_ch == ((-1 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L40"
                break;
            };
            _got = (_got + ((_ch : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L44"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L45"
            _t.errorf(("segments=%v got=%s want=%s" : stdgo.GoString), stdgo.Go.toInterface(_segments), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
