package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void {
        var _got = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _want = (stdgo._internal.strings.Strings_join.join(_segments, stdgo.Go.str()?.__copy__())?.__copy__() : stdgo.GoString);
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _data : _segments } : _internal.bufio_test.Bufio_test_StringReader.StringReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_StringReader.StringReader>)));
        while (true) {
            var __tmp__ = _r.readRune(), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    return;
                };
                break;
            };
            _got = (_got + ((_r : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_got != (_want)) {
            _t.errorf(("segments=%v got=%s want=%s" : stdgo.GoString), stdgo.Go.toInterface(_segments), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
