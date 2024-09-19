package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_wantedAndErrReader_asInterface) class T_wantedAndErrReader_static_extension {
    @:keep
    static public function read( _:_internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader = _?.__copy__();
        return { _0 : (_p.length), _1 : stdgo._internal.errors.Errors_new_.new_(("wantedAndErrReader error" : stdgo.GoString)) };
    }
}
