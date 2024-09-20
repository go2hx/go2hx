package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _scanInts(_r:stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.Error {
        var _err = (null : stdgo.Error);
        _r._next = null;
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.pointer(_r._i)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _b.readRune(), _c:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _err = (null : stdgo.Error);
            };
            return _err;
        };
        if (_c != ((46 : stdgo.GoInt32))) {
            return _err;
        };
        var _next = (stdgo.Go.setRef(({} : _internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt)) : stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>);
        _err = _internal.fmt_test.Fmt_test__scanInts._scanInts(_next, _b);
        if (_err == null) {
            _r._next = _next;
        };
        return _err;
    }
