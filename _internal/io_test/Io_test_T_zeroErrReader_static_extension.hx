package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_zeroErrReader_asInterface) class T_zeroErrReader_static_extension {
    @:keep
    static public function read( _r:_internal.io_test.Io_test_T_zeroErrReader.T_zeroErrReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:_internal.io_test.Io_test_T_zeroErrReader.T_zeroErrReader = _r?.__copy__();
        return { _0 : stdgo.Go.copySlice(_p, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _1 : _r._err };
    }
}
