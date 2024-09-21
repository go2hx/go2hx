package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testErrAtEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("1 2 33" : stdgo.GoString))));
        var _split = function(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
            var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.bufio.Bufio_scanWords.scanWords(_data, _atEOF);
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
            };
            if (((_token.length) > (1 : stdgo.GoInt) : Bool)) {
                if (stdgo.Go.toInterface(_s.errOrEOF()) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _t.fatal(stdgo.Go.toInterface(("not testing EOF" : stdgo.GoString)));
                };
                _err = _internal.bufio_test.Bufio_test__testError._testError;
            };
            return { _0 : _advance, _1 : _token, _2 : _err };
        };
        _s.split(_split);
        while (_s.scan()) {};
        if (stdgo.Go.toInterface(_s.err()) != (stdgo.Go.toInterface(_internal.bufio_test.Bufio_test__testError._testError))) {
            _t.fatal(stdgo.Go.toInterface(("wrong error:" : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
        };
    }
