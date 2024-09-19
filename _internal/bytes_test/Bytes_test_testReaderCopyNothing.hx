package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testReaderCopyNothing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        {};
        var _discard = (new _internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___justWriter_5910.T_testReaderCopyNothing___localname___justWriter_5910(stdgo._internal.io.Io_discard.discard) : _internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___justWriter_5910.T_testReaderCopyNothing___localname___justWriter_5910);
        var __0:_internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___nErr_5822.T_testReaderCopyNothing___localname___nErr_5822 = ({} : _internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___nErr_5822.T_testReaderCopyNothing___localname___nErr_5822), __1:_internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___nErr_5822.T_testReaderCopyNothing___localname___nErr_5822 = ({} : _internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___nErr_5822.T_testReaderCopyNothing___localname___nErr_5822);
var _withOut = __1, _with = __0;
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_discard), stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))));
            _with._n = __tmp__._0;
            _with._err = __tmp__._1;
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_discard), stdgo.Go.asInterface((new _internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___justReader_5869.T_testReaderCopyNothing___localname___justReader_5869(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((null : stdgo.Slice<stdgo.GoUInt8>)))) : _internal.bytes_test.Bytes_test_T_testReaderCopyNothing___localname___justReader_5869.T_testReaderCopyNothing___localname___justReader_5869)));
            _withOut._n = __tmp__._0;
            _withOut._err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_with) != stdgo.Go.toInterface(_withOut)) {
            _t.errorf(("behavior differs: with = %#v; without: %#v" : stdgo.GoString), stdgo.Go.toInterface(_with), stdgo.Go.toInterface(_withOut));
        };
    }
