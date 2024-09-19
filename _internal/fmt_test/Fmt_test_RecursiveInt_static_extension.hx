package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.RecursiveInt_asInterface) class RecursiveInt_static_extension {
    @:keep
    static public function scan( _r:stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>, _state:stdgo._internal.fmt.Fmt_ScanState.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt> = _r;
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(_state, stdgo.Go.toInterface(stdgo.Go.pointer(_r._i)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var _next = (stdgo.Go.setRef(({} : _internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt)) : stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(_state, (".%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_next)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
                _err = (null : stdgo.Error);
            };
            return _err;
        };
        _r._next = _next;
        return _err;
    }
}
