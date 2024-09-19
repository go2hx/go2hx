package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _testReadLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _input:stdgo.Slice<stdgo.GoUInt8>):Void {
        {
            var _stride = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_stride < (2 : stdgo.GoInt) : Bool), _stride++, {
                var _done = (0 : stdgo.GoInt);
                var _reader = (new _internal.bufio_test.Bufio_test_T_testReader.T_testReader(_input, _stride) : _internal.bufio_test.Bufio_test_T_testReader.T_testReader);
                var _l = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface((stdgo.Go.setRef(_reader) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_testReader.T_testReader>)), ((_input.length) + (1 : stdgo.GoInt) : stdgo.GoInt));
                while (true) {
                    var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_err != null) : Bool)) {
                        _t.errorf(("ReadLine returned both data and error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    if (_isPrefix) {
                        _t.errorf(("ReadLine returned prefix" : stdgo.GoString));
                    };
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _t.fatalf(("Got unknown error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                        break;
                    };
                    {
                        var _want = (_internal.bufio_test.Bufio_test__testOutput._testOutput.__slice__(_done, (_done + (_line.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        if (!stdgo._internal.bytes.Bytes_equal.equal(_want, _line)) {
                            _t.errorf(("Bad line at stride %d: want: %x got: %x" : stdgo.GoString), stdgo.Go.toInterface(_stride), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_line));
                        };
                    };
                    _done = (_done + ((_line.length)) : stdgo.GoInt);
                };
                if (_done != ((_internal.bufio_test.Bufio_test__testOutput._testOutput.length))) {
                    _t.errorf(("ReadLine didn\'t return everything: got: %d, want: %d (stride: %d)" : stdgo.GoString), stdgo.Go.toInterface(_done), stdgo.Go.toInterface((_internal.bufio_test.Bufio_test__testOutput._testOutput.length)), stdgo.Go.toInterface(_stride));
                };
            });
        };
    }
