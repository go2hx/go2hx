package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testUnreadRuneAtEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("x" : stdgo.GoString))));
        _r.readRune();
        _r.readRune();
        _r.unreadRune();
        var __tmp__ = _r.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error at EOF" : stdgo.GoString)));
        } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _t.error(stdgo.Go.toInterface(("expected EOF; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
