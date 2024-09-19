package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("日本語日本語日本語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : _internal.bufio_test.Bufio_test_StringReader.StringReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_StringReader.StringReader>)));
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error on UnreadRune from fresh buffer" : stdgo.GoString)));
        };
        var __tmp__ = _r.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (1):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            _err = _r.unreadRune();
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(("unexpected error on UnreadRune (1):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after UnreadRune (1)" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.read(_buf);
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on Read (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after Read (2)" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (_ => _ in _buf) {
            {
                var __tmp__ = _r.readByte();
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(("unexpected error on ReadByte (2):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after ReadByte" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (3):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.readByte();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadByte (3):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = _r.unreadByte();
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on UnreadByte (3):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after UnreadByte (3)" : stdgo.GoString)));
        };
        {
            var __tmp__ = _r.readRune();
            _err = __tmp__._2;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune (4):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.readSlice((0 : stdgo.GoUInt8));
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _t.error(stdgo.Go.toInterface(("unexpected error on ReadSlice (4):" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_r.unreadRune() == null) {
            _t.error(stdgo.Go.toInterface(("expected error after ReadSlice (4)" : stdgo.GoString)));
        };
    }
