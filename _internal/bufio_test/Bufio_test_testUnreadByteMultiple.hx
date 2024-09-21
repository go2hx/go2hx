package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testUnreadByteMultiple(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _segments = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Hello, " : stdgo.GoString), ("world" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _data = (stdgo._internal.strings.Strings_join.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (_data.length) : Bool), _n++, {
                var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : _internal.bufio_test.Bufio_test_StringReader.StringReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_StringReader.StringReader>)));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("n = %d: unexpected error on ReadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                        };
                        if (_b != (_data[(_i : stdgo.GoInt)])) {
                            _t.fatalf(("n = %d: incorrect byte returned from ReadByte: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_data[(_i : stdgo.GoInt)]));
                        };
                    });
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    {
                        var _err = (_r.unreadByte() : stdgo.Error);
                        if (_err != null) {
                            _t.errorf(("n = %d: unexpected error on UnreadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                {
                    var _err = (_r.unreadByte() : stdgo.Error);
                    if (_err == null) {
                        _t.errorf(("n = %d: expected error on UnreadByte" : stdgo.GoString), stdgo.Go.toInterface(_n));
                    };
                };
            });
        };
    }
