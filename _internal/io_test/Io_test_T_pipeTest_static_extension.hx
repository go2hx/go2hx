package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_pipeTest_asInterface) class T_pipeTest_static_extension {
    @:keep
    static public function string( _p:_internal.io_test.Io_test_T_pipeTest.T_pipeTest):stdgo.GoString {
        @:recv var _p:_internal.io_test.Io_test_T_pipeTest.T_pipeTest = _p?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("async=%v err=%v closeWithError=%v" : stdgo.GoString), stdgo.Go.toInterface(_p._async), stdgo.Go.toInterface(_p._err), stdgo.Go.toInterface(_p._closeWithError))?.__copy__();
    }
}
