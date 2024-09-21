package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiReaderFinalEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = (stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface((97 : _internal.io_test.Io_test_T_byteAndEOFReader.T_byteAndEOFReader))) : stdgo._internal.io.Io_Reader.Reader);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _t.errorf(("got %v, %v; want 1, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
