package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _segments = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Hello, world:" : stdgo.GoString), ("日本語" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : _internal.bufio_test.Bufio_test_StringReader.StringReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_StringReader.StringReader>)));
        var _got = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _want = (stdgo._internal.strings.Strings_join.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
        while (true) {
            var __tmp__ = _r.readRune(), _r1:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _t.error(stdgo.Go.toInterface(("unexpected error on ReadRune:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
                break;
            };
            _got = (_got + ((_r1 : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                _err = _r.unreadRune();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("unexpected error on UnreadRune:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = _r.readRune(), _r2:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("unexpected error reading after unreading:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (_r1 != (_r2)) {
                _t.fatalf(("incorrect rune after unread: got %c, want %c" : stdgo.GoString), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2));
            };
        };
        if (_got != (_want)) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
