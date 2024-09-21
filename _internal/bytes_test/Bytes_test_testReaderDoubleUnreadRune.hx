package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer((("groucho" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var __tmp__ = _buf.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_buf.unreadByte() : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_buf.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte: expected error, got nil" : stdgo.GoString)));
            };
        };
    }
