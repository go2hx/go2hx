package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
@:keep @:allow(_internal.os.exec_test.Exec_test.T_badWriter_asInterface) class T_badWriter_static_extension {
    @:keep
    static public function write( _w:stdgo.Ref<_internal.os.exec_test.Exec_test_T_badWriter.T_badWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.os.exec_test.Exec_test_T_badWriter.T_badWriter> = _w;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
    }
}
