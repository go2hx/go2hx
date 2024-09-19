package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function benchmarkReaderWriteToOptimal(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_buf);
        var _srcReader = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(_r)) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader)), (1024 : stdgo.GoInt));
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.io.Io_discard.discard) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom)) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _b.fatal(stdgo.Go.toInterface(("io.Discard doesn\'t support ReaderFrom" : stdgo.GoString)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _srcReader.reset(stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(_r)) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader)));
                var __tmp__ = _srcReader.writeTo(stdgo._internal.io.Io_discard.discard), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
                if (_n != ((16384i64 : stdgo.GoInt64))) {
                    _b.fatalf(("n = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((16384 : stdgo.GoInt)));
                };
            });
        };
    }
