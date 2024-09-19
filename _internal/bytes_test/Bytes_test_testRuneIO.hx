package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testRuneIO(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((4000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _n = (0 : stdgo.GoInt);
        {
            var _r = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var _size = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
                var __tmp__ = _buf.writeRune(_r), _nbytes:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("WriteRune(%U) error: %s" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                };
                if (_nbytes != (_size)) {
                    _t.fatalf(("WriteRune(%U) expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_nbytes));
                };
                _n = (_n + (_size) : stdgo.GoInt);
            });
        };
        _b = (_b.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        if (!stdgo._internal.bytes.Bytes_equal.equal(_buf.bytes(), _b)) {
            _t.fatalf(("incorrect result from WriteRune: %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_b));
        };
        var _p = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _r = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var _size = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_p, _r) : stdgo.GoInt);
                var __tmp__ = _buf.readRune(), _nr:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_nr != (_r) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    _t.fatalf(("ReadRune(%U) got %U,%d not %U,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_nr), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
        _buf.reset();
        {
            var _err = (_buf.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _buf.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("ReadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        {
            var _err = (_buf.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("UnreadRune after ReadRune at EOF: got no error" : stdgo.GoString)));
            };
        };
        _buf.write(_b);
        {
            var _r = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var __tmp__ = _buf.readRune(), _r1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, __2:stdgo.Error = __tmp__._2;
                {
                    var _err = (_buf.unreadRune() : stdgo.Error);
                    if (_err != null) {
                        _t.fatalf(("UnreadRune(%U) got error %q" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                    };
                };
                var __tmp__ = _buf.readRune(), _r2:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if ((((_r1 != (_r2) || _r1 != (_r) : Bool) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    _t.fatalf(("ReadRune(%U) after UnreadRune got %U,%d not %U,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
