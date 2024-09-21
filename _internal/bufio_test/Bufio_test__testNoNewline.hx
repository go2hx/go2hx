package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _testNoNewline(_text:stdgo.GoString, _lines:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = stdgo._internal.strings.Strings_newReader.newReader(_text?.__copy__());
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_slowReader.T_slowReader((7 : stdgo.GoInt), stdgo.Go.asInterface(_buf)) : _internal.bufio_test.Bufio_test_T_slowReader.T_slowReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_slowReader.T_slowReader>)));
        _s.split(stdgo._internal.bufio.Bufio_scanLines.scanLines);
        {
            var _lineNum = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _lineNum++, {
                var _line = (_lines[(_lineNum : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                if (_s.text() != (_line)) {
                    _t.errorf(("%d: bad line: %d %d\n%.100q\n%.100q\n" : stdgo.GoString), stdgo.Go.toInterface(_lineNum), stdgo.Go.toInterface((_s.bytes().length)), stdgo.Go.toInterface((_line.length)), stdgo.Go.toInterface(_s.bytes()), stdgo.Go.toInterface(_line));
                };
            });
        };
        var _err = (_s.err() : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
