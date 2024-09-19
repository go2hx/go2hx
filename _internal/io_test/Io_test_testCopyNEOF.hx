package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testCopyNEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.io_test.Io_test_T_noReadFrom.T_noReadFrom(stdgo.Go.asInterface(_b)) : _internal.io_test.Io_test_T_noReadFrom.T_noReadFrom)) : stdgo.Ref<_internal.io_test.Io_test_T_noReadFrom.T_noReadFrom>)), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("foo" : stdgo.GoString))), (3i64 : stdgo.GoInt64)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (3i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(noReadFrom, foo, 3) = %d, %v; want 3, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.io_test.Io_test_T_noReadFrom.T_noReadFrom(stdgo.Go.asInterface(_b)) : _internal.io_test.Io_test_T_noReadFrom.T_noReadFrom)) : stdgo.Ref<_internal.io_test.Io_test_T_noReadFrom.T_noReadFrom>)), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("foo" : stdgo.GoString))), (4i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (3i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _t.errorf(("CopyN(noReadFrom, foo, 4) = %d, %v; want 3, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_b), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("foo" : stdgo.GoString))), (3i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (3i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(bytes.Buffer, foo, 3) = %d, %v; want 3, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_b), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("foo" : stdgo.GoString))), (4i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (3i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _t.errorf(("CopyN(bytes.Buffer, foo, 4) = %d, %v; want 3, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_b), stdgo.Go.asInterface((new _internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader() : _internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader)), (5i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (5i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(bytes.Buffer, wantedAndErrReader, 5) = %d, %v; want 5, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.io_test.Io_test_T_noReadFrom.T_noReadFrom(stdgo.Go.asInterface(_b)) : _internal.io_test.Io_test_T_noReadFrom.T_noReadFrom)) : stdgo.Ref<_internal.io_test.Io_test_T_noReadFrom.T_noReadFrom>)), stdgo.Go.asInterface((new _internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader() : _internal.io_test.Io_test_T_wantedAndErrReader.T_wantedAndErrReader)), (5i64 : stdgo.GoInt64));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (5i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.errorf(("CopyN(noReadFrom, wantedAndErrReader, 5) = %d, %v; want 5, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
