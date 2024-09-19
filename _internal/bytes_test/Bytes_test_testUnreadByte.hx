package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testUnreadByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _b.readByte(), __0:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("ReadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte after ReadByte at EOF: got no error" : stdgo.GoString)));
            };
        };
        _b.writeString(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString));
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                _t.fatalf(("Read(nil) = %d,%v; want 0,nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadByte after Read(nil): got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _b.readBytes((109 : stdgo.GoUInt8)), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadBytes: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_b.unreadByte() : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("UnreadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = _b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_c != ((109 : stdgo.GoUInt8))) {
            _t.errorf(("ReadByte = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((109 : stdgo.GoInt32)));
        };
    }
