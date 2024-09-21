package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFromWhileFull(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _w = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_buf), (10 : stdgo.GoInt));
        var __tmp__ = _w.write((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (10 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("Write returned (%v, %v), want (10, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _w.readFrom(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("abcdef" : stdgo.GoString)))), _n2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n2 != (6i64 : stdgo.GoInt64)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFrom returned (%v, %v), want (6, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_err));
        };
    }
