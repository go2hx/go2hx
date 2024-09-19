package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriteStringStringWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {
            var _tw = (stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter() : _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>);
            var _b = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.writeString(("1234" : stdgo.GoString));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
            _b.writeString(("56789012" : stdgo.GoString));
            _tw._check(_t, ("12345678" : stdgo.GoString), stdgo.Go.str()?.__copy__());
            _b.flush();
            _tw._check(_t, ("123456789012" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        };
        {
            var _tw = (stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter() : _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>);
            var _b = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.writeString(("123456789" : stdgo.GoString));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), ("123456789" : stdgo.GoString));
        };
        {
            var _tw = (stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter() : _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>);
            var _b = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.writeString(("abc" : stdgo.GoString));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
            _b.writeString(("123456789012345" : stdgo.GoString));
            _tw._check(_t, ("abc12345" : stdgo.GoString), ("6789012345" : stdgo.GoString));
        };
        {
            var _tw = (stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter() : _internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>);
            var _b = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_tw), (8 : stdgo.GoInt));
            _b.write((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _tw._check(_t, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
            _b.writeString(("123456789012345" : stdgo.GoString));
            _tw._check(_t, ("abc12345" : stdgo.GoString), ("6789012345" : stdgo.GoString));
        };
    }
