package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testPipe3(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<_internal.io_test.Io_test_T_pipeReturn.T_pipeReturn>(0, () -> ({} : _internal.io_test.Io_test_T_pipeReturn.T_pipeReturn)) : stdgo.Chan<_internal.io_test.Io_test_T_pipeReturn.T_pipeReturn>);
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        var _wdat:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_wdat.length) : Bool), _i++, {
                _wdat[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            });
        };
        stdgo.Go.routine(() -> _internal.io_test.Io_test_writer.writer(stdgo.Go.asInterface(_w), _wdat, _c));
        var _rdat:stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _tot = (0 : stdgo.GoInt);
        {
            var _n = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (256 : stdgo.GoInt) : Bool), _n = (_n * ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var __tmp__ = _r.read((_rdat.__slice__(_tot, (_tot + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                    _t.fatalf(("read: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                var _expect = (_n : stdgo.GoInt);
                if (_n == ((128 : stdgo.GoInt))) {
                    _expect = (1 : stdgo.GoInt);
                } else if (_n == ((256 : stdgo.GoInt))) {
                    _expect = (0 : stdgo.GoInt);
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _t.fatalf(("read at end: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                if (_nn != (_expect)) {
                    _t.fatalf(("read %d, expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_nn));
                };
                _tot = (_tot + (_nn) : stdgo.GoInt);
            });
        };
        var _pr = (_c.__get__()?.__copy__() : _internal.io_test.Io_test_T_pipeReturn.T_pipeReturn);
        if (((_pr._n != (128 : stdgo.GoInt)) || (_pr._err != null) : Bool)) {
            _t.fatalf(("write 128: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_pr._n), stdgo.Go.toInterface(_pr._err));
        };
        if (_tot != ((128 : stdgo.GoInt))) {
            _t.fatalf(("total read %d != 128" : stdgo.GoString), stdgo.Go.toInterface(_tot));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                if (_rdat[(_i : stdgo.GoInt)] != ((_i : stdgo.GoUInt8))) {
                    _t.fatalf(("rdat[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_rdat[(_i : stdgo.GoInt)]));
                };
            });
        };
    }
