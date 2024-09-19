package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _testReadLineNewlines(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _input:stdgo.GoString, _expect:stdgo.Slice<_internal.bufio_test.Bufio_test_T_readLineResult.T_readLineResult>):Void {
        var _b = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_input?.__copy__())), (16 : stdgo.GoInt));
        for (_i => _e in _expect) {
            var __tmp__ = _b.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (!stdgo._internal.bytes.Bytes_equal.equal(_line, _e._line)) {
                _t.errorf(("%q call %d, line == %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_e._line));
                return;
            };
            if (_isPrefix != (_e._isPrefix)) {
                _t.errorf(("%q call %d, isPrefix == %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_isPrefix), stdgo.Go.toInterface(_e._isPrefix));
                return;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_e._err))) {
                _t.errorf(("%q call %d, err == %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_e._err));
                return;
            };
        };
    }
