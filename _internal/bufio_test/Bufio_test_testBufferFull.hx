package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testBufferFull(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _buf = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("And now, hello, world! It is the time for all good men to come to the aid of their party" : stdgo.GoString))), (16 : stdgo.GoInt));
        var __tmp__ = _buf.readSlice((33 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((((_line : stdgo.GoString) != ("And now, hello, " : stdgo.GoString)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull)) : Bool)) {
            _t.errorf(("first ReadSlice(,) = %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _buf.readSlice((33 : stdgo.GoUInt8));
            _line = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_line : stdgo.GoString) != ("world!" : stdgo.GoString)) || (_err != null) : Bool)) {
            _t.errorf(("second ReadSlice(,) = %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_err));
        };
    }
