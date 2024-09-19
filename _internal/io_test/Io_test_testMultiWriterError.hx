package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiWriterError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f1 = (function(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            return { _0 : ((_p.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _1 : stdgo._internal.io.Io_errShortWrite.errShortWrite };
        } : _internal.io_test.Io_test_T_writerFunc.T_writerFunc);
        var _f2 = (function(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            _t.errorf(("MultiWriter called f2.Write" : stdgo.GoString));
            return { _0 : (_p.length), _1 : (null : stdgo.Error) };
        } : _internal.io_test.Io_test_T_writerFunc.T_writerFunc);
        var _w = (stdgo._internal.io.Io_multiWriter.multiWriter(stdgo.Go.asInterface(_f1), stdgo.Go.asInterface(_f2)) : stdgo._internal.io.Io_Writer.Writer);
        var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (50 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_errShortWrite.errShortWrite)) : Bool)) {
            _t.errorf(("Write = %d, %v, want 50, ErrShortWrite" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
