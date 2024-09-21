package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testScanWords(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_n => _test in _internal.bufio_test.Bufio_test__wordScanTests._wordScanTests) {
            var _buf = stdgo._internal.strings.Strings_newReader.newReader(_test?.__copy__());
            var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(_buf));
            _s.split(stdgo._internal.bufio.Bufio_scanWords.scanWords);
            var _words = stdgo._internal.strings.Strings_fields.fields(_test?.__copy__());
            var _wordCount:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _wordCount = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_wordCount < (_words.length) : Bool), _wordCount++, {
                    if (!_s.scan()) {
                        break;
                    };
                    var _got = (_s.text()?.__copy__() : stdgo.GoString);
                    if (_got != (_words[(_wordCount : stdgo.GoInt)])) {
                        _t.errorf(("#%d: %d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_wordCount), stdgo.Go.toInterface(_words[(_wordCount : stdgo.GoInt)]), stdgo.Go.toInterface(_got));
                    };
                });
            };
            if (_s.scan()) {
                _t.errorf(("#%d: scan ran too long, got %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s.text()));
            };
            if (_wordCount != ((_words.length))) {
                _t.errorf(("#%d: termination expected at %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_words.length)), stdgo.Go.toInterface(_wordCount));
            };
            var _err = (_s.err() : stdgo.Error);
            if (_err != null) {
                _t.errorf(("#%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
