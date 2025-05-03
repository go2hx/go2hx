package stdgo._internal.text.scanner;
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _mode:stdgo.GoUInt):Void {
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>).init(stdgo.Go.asInterface(stdgo._internal.text.scanner.Scanner__makesource._makeSource((" \t%s\n" : stdgo.GoString))));
        (@:checkr _s ?? throw "null pointer dereference").mode = _mode;
        var _tok = (_s.scan() : stdgo.GoInt32);
        var _line = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L278"
        for (__0 => _k in stdgo._internal.text.scanner.Scanner__tokenlist._tokenList) {
            //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L279"
            if ((((_mode & (512u32 : stdgo.GoUInt) : stdgo.GoUInt) == (0u32 : stdgo.GoUInt)) || (_k._tok != (-8 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L280"
                stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, _line, _tok, _k._tok, _k._text?.__copy__());
                _tok = _s.scan();
            };
            _line = (_line + ((stdgo._internal.text.scanner.Scanner__countnewlines._countNewlines(_k._text?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/scanner/scanner_test.go#L285"
        stdgo._internal.text.scanner.Scanner__checktok._checkTok(_t, _s, _line, _tok, (-1 : stdgo.GoInt32), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
