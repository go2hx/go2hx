package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testScanLineTooLong(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _tmp = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _lineNum = (0 : stdgo.GoInt);
        var _j = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (512 : stdgo.GoInt) : Bool), _i++, {
                _internal.bufio_test.Bufio_test__genLine._genLine(_tmp, _lineNum, _j, true);
                _j++;
                _buf.write(_tmp.bytes());
                _lineNum++;
            });
        };
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_slowReader.T_slowReader((3 : stdgo.GoInt), stdgo.Go.asInterface(_buf)) : _internal.bufio_test.Bufio_test_T_slowReader.T_slowReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_slowReader.T_slowReader>)));
        _s.split(stdgo._internal.bufio.Bufio_scanLines.scanLines);
        _s.maxTokenSize((256 : stdgo.GoInt));
        _j = (0 : stdgo.GoInt);
        {
            var _lineNum = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _lineNum++, {
                _internal.bufio_test.Bufio_test__genLine._genLine(_tmp, _lineNum, _j, false);
                if ((_j < (256 : stdgo.GoInt) : Bool)) {
                    _j++;
                } else {
                    _j--;
                };
                var _line = _tmp.bytes();
                if (!stdgo._internal.bytes.Bytes_equal.equal(_s.bytes(), _line)) {
                    _t.errorf(("%d: bad line: %d %d\n%.100q\n%.100q\n" : stdgo.GoString), stdgo.Go.toInterface(_lineNum), stdgo.Go.toInterface((_s.bytes().length)), stdgo.Go.toInterface((_line.length)), stdgo.Go.toInterface(_s.bytes()), stdgo.Go.toInterface(_line));
                };
            });
        };
        var _err = (_s.err() : stdgo.Error);
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errTooLong.errTooLong))) {
            _t.fatalf(("expected ErrTooLong; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
