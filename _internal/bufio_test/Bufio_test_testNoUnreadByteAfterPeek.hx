package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testNoUnreadByteAfterPeek(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _br = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("example" : stdgo.GoString))));
        _br.readByte();
        _br.peek((1 : stdgo.GoInt));
        {
            var _err = (_br.unreadByte() : stdgo.Error);
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("UnreadByte didn\'t fail after Peek" : stdgo.GoString)));
            };
        };
    }
