package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiWriter_WriteStringSingleAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer), __1:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
var _sink2 = __1, _sink1 = __0;
        {};
        var _mw = (stdgo._internal.io.Io_multiWriter.multiWriter(stdgo.Go.asInterface((new _internal.io_test.Io_test_T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430(stdgo.Go.asInterface((stdgo.Go.setRef(_sink1) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))) : _internal.io_test.Io_test_T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430)), stdgo.Go.asInterface((new _internal.io_test.Io_test_T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430(stdgo.Go.asInterface((stdgo.Go.setRef(_sink2) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))) : _internal.io_test.Io_test_T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430.T_testMultiWriter_WriteStringSingleAlloc___localname___simpleWriter_2430))) : stdgo._internal.io.Io_Writer.Writer);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((1000 : stdgo.GoInt), function():Void {
            stdgo._internal.io.Io_writeString.writeString(_mw, ("foo" : stdgo.GoString));
        }) : stdgo.GoInt);
        if (_allocs != ((1 : stdgo.GoInt))) {
            _t.errorf(("num allocations = %d; want 1" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
