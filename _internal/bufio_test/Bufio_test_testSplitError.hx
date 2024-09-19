package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testSplitError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _numSplits = (0 : stdgo.GoInt);
        {};
        var _errorSplit = function(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
            var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
            if (_atEOF) {
                throw stdgo.Go.toInterface(("didn\'t get enough data" : stdgo.GoString));
            };
            if ((_numSplits >= (7 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _internal.bufio_test.Bufio_test__testError._testError };
            };
            _numSplits++;
            return { _0 : (1 : stdgo.GoInt), _1 : (_data.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
        };
        {};
        var _buf = stdgo._internal.strings.Strings_newReader.newReader(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString));
        var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_slowReader.T_slowReader((1 : stdgo.GoInt), stdgo.Go.asInterface(_buf)) : _internal.bufio_test.Bufio_test_T_slowReader.T_slowReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_slowReader.T_slowReader>)));
        _s.split(_errorSplit);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_s.scan(), _i++, {
                if (((_s.bytes().length != (1 : stdgo.GoInt)) || (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(_i : stdgo.GoInt)] != _s.bytes()[(0 : stdgo.GoInt)]) : Bool)) {
                    _t.errorf(("#%d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s.bytes()[(0 : stdgo.GoInt)]));
                };
            });
        };
        if (_i != ((7 : stdgo.GoInt))) {
            _t.errorf(("unexpected termination; expected %d tokens got %d" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
        };
        var _err = (_s.err() : stdgo.Error);
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_internal.bufio_test.Bufio_test__testError._testError))) {
            _t.fatalf(("expected %q got %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.bufio_test.Bufio_test__testError._testError), stdgo.Go.toInterface(_err));
        };
    }
