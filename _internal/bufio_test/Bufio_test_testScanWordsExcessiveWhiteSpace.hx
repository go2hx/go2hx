package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testScanWordsExcessiveWhiteSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _s = ((stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), (1024 : stdgo.GoInt)) + ("ipsum" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__())));
        _scanner.maxTokenSize((256 : stdgo.GoInt));
        _scanner.split(stdgo._internal.bufio.Bufio_scanWords.scanWords);
        if (!_scanner.scan()) {
            _t.fatalf(("scan failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_scanner.err()));
        };
        {
            var _token = (_scanner.text()?.__copy__() : stdgo.GoString);
            if (_token != (("ipsum" : stdgo.GoString))) {
                _t.fatalf(("unexpected token: %v" : stdgo.GoString), stdgo.Go.toInterface(_token));
            };
        };
    }
