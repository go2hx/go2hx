package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testUnreadByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _segments = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Hello, " : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : _internal.bufio_test.Bufio_test_StringReader.StringReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_StringReader.StringReader>)));
        var _got = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _want = (stdgo._internal.strings.Strings_join.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
        while (true) {
            var __tmp__ = _r.readByte(), _b1:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _t.error(stdgo.Go.toInterface(("unexpected error on ReadByte:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
                break;
            };
            _got = (_got + ((_b1 : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                _err = _r.unreadByte();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("unexpected error on UnreadByte:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = _r.readByte(), _b2:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("unexpected error reading after unreading:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (_b1 != (_b2)) {
                _t.fatalf(("incorrect byte after unread: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b2));
            };
        };
        if (_got != (_want)) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
