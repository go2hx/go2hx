package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("世界" : stdgo.GoString));
        {
            var __tmp__ = _r.readRune(), __0:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.errorf(("ReadRune: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {};
        _r.reset(("abcdef" : stdgo.GoString));
        {
            var _err = (_r.unreadRune() : stdgo.Error);
            if (_err == null) {
                _t.errorf(("UnreadRune: expected error, got nil" : stdgo.GoString));
            };
        };
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo.Go.asInterface(_r)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadAll: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("abcdef" : stdgo.GoString))) {
                _t.errorf(("ReadAll: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("abcdef" : stdgo.GoString)));
            };
        };
    }
