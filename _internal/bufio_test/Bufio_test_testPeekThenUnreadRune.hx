package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testPeekThenUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("x" : stdgo.GoString))));
        _r.readRune();
        _r.peek((1 : stdgo.GoInt));
        _r.unreadRune();
        _r.readRune();
    }
