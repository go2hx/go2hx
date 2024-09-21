package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testPipeConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        _t.run(("Write" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                            {
                                var __tmp__ = _w.write((("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (((_n != (("0123456789abcdef" : stdgo.GoString).length)) || (_err != null) : Bool)) {
                                    _t.errorf(("Write() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((("0123456789abcdef" : stdgo.GoString).length)));
                                };
                            };
                        };
                        a();
                    });
                });
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_buf.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                    {
                        var __tmp__ = _r.read((_buf.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
                            _t.errorf(("Read() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((2 : stdgo.GoInt)));
                        };
                    };
                });
            };
            var _got = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _want = (stdgo._internal.strings.Strings_repeat.repeat(("0123456789abcdef" : stdgo.GoString), (8 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        });
        _t.run(("Read" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
            var _c = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>((64 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _c.capacity : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
                                    _t.errorf(("Read() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((2 : stdgo.GoInt)));
                                };
                            };
                            _c.__send__(_buf);
                        };
                        a();
                    });
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                    {
                        var __tmp__ = _w.write((("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_n != (("0123456789abcdef" : stdgo.GoString).length)) || (_err != null) : Bool)) {
                            _t.errorf(("Write() = (%d, %v); want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((("0123456789abcdef" : stdgo.GoString).length)));
                        };
                    };
                });
            };
            var _got = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (128 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _c.capacity : Bool), _i++, {
                    _got = (_got.__append__(...(_c.__get__() : Array<stdgo.GoUInt8>)));
                });
            };
            _got = _internal.io_test.Io_test__sortBytesInGroups._sortBytesInGroups(_got, (2 : stdgo.GoInt));
            var _want = stdgo._internal.bytes.Bytes_repeat.repeat((("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (8 : stdgo.GoInt));
            _want = _internal.io_test.Io_test__sortBytesInGroups._sortBytesInGroups(_want, (2 : stdgo.GoInt));
            if ((_got : stdgo.GoString) != ((_want : stdgo.GoString))) {
                _t.errorf(("got: %q; want: %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        });
    }
