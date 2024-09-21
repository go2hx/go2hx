package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiReaderFreesExhaustedReaders(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _mr:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _closed = (new stdgo.Chan<_internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader>(0, () -> ({} : _internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader)) : stdgo.Chan<_internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader>);
        {
            var a = function():Void {
                var _buf1 = stdgo._internal.bytes.Bytes_newReader.newReader((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                var _buf2 = stdgo._internal.bytes.Bytes_newReader.newReader((("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
                _mr = stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(_buf1), stdgo.Go.asInterface(_buf2));
                stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(stdgo.Go.asInterface(_buf1)), stdgo.Go.toInterface(function(_0:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>):Void {
                    if (_closed != null) _closed.__close__();
                }));
            };
            a();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_mr, _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_buf : stdgo.GoString) != ("foob" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("ReadFull = %d (%q), %v; want 3, \"foo\", nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var __select__ = true;
            while (__select__) {
                if (_closed != null && _closed.__isGet__()) {
                    __select__ = false;
                    {
                        _closed.__get__();
                        {};
                    };
                } else if (stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {
                            _t.fatal(stdgo.Go.toInterface(("timeout waiting for collection of buf1" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_mr, (_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != ("ar" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("ReadFull = %d (%q), %v; want 2, \"ar\", nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
            };
        };
    }
