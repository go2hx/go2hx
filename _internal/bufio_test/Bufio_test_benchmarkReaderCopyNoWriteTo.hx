package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function benchmarkReaderCopyNoWriteTo(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _srcBuf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        var _srcReader = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_srcBuf));
        var _src = (new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(_srcReader)) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader);
        var _dstBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _dst = (new _internal.bufio_test.Bufio_test_T_onlyWriter.T_onlyWriter(stdgo.Go.asInterface(_dstBuf)) : _internal.bufio_test.Bufio_test_T_onlyWriter.T_onlyWriter);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _srcBuf.reset();
                _srcReader.reset(stdgo.Go.asInterface(_srcBuf));
                _dstBuf.reset();
                stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_dst), stdgo.Go.asInterface(_src));
            });
        };
    }
