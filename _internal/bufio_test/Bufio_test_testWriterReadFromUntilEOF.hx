package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFromUntilEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _w = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_buf), (5 : stdgo.GoInt));
        var __tmp__ = _w.write((("0123" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (4 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("Write returned (%v, %v), want (4, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _r = (stdgo.Go.setRef(({ _r : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abcd" : stdgo.GoString))), _n : (3 : stdgo.GoInt) } : _internal.bufio_test.Bufio_test_T_emptyThenNonEmptyReader.T_emptyThenNonEmptyReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_emptyThenNonEmptyReader.T_emptyThenNonEmptyReader>);
        var __tmp__ = _w.readFrom(stdgo.Go.asInterface(_r)), _n2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n2 != (4i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFrom returned (%v, %v), want (4, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_err));
        };
        _w.flush();
        {
            var __0 = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("0123abcd" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.fatalf(("buf.Bytes() returned %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
