package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testTeeReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _src = (("hello, world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((_src.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _rb = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_src);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _r = (stdgo._internal.io.Io_teeReader.teeReader(stdgo.Go.asInterface(_rb), stdgo.Go.asInterface(_wb)) : stdgo._internal.io.Io_Reader.Reader);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _dst), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (_src.length)) : Bool)) {
                _t.fatalf(("ReadFull(r, dst) = %d, %v; want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_src.length)));
            };
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_dst, _src)) {
            _t.errorf(("bytes read = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_dst), stdgo.Go.toInterface(_src));
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_wb.bytes(), _src)) {
            _t.errorf(("bytes written = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_wb.bytes()), stdgo.Go.toInterface(_src));
        };
        {
            var __tmp__ = _r.read(_dst), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _t.errorf(("r.Read at EOF = %d, %v want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        _rb = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_src);
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        _pr.close();
        _r = stdgo._internal.io.Io_teeReader.teeReader(stdgo.Go.asInterface(_rb), stdgo.Go.asInterface(_pw));
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r, _dst), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_errClosedPipe.errClosedPipe)) : Bool)) {
                _t.errorf(("closed tee: ReadFull(r, dst) = %d, %v; want 0, EPIPE" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }
