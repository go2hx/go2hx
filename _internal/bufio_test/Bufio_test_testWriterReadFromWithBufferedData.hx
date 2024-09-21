package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFromWithBufferedData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _input = _internal.bufio_test.Bufio_test__createTestInput._createTestInput((64 : stdgo.GoInt));
        var _rfw = (stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_readFromWriter.T_readFromWriter() : _internal.bufio_test.Bufio_test_T_readFromWriter.T_readFromWriter)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_readFromWriter.T_readFromWriter>);
        var _w = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_rfw), (16 : stdgo.GoInt));
        {};
        {
            var __tmp__ = _w.write((_input.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (8 : stdgo.GoInt)) || (_err != null) : Bool)) {
                _t.errorf(("w.Write(%v bytes) = %v, %v; want %v, nil" : stdgo.GoString), stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((8 : stdgo.GoInt)));
            };
        };
        var __tmp__ = _w.readFrom(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((_input.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _wantn = ((_input.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).length : stdgo.GoInt);
            if ((((_n : stdgo.GoInt) != _wantn) || (_err != null) : Bool)) {
                _t.errorf(("io.Copy(w, %v bytes) = %v, %v; want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_wantn), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantn));
            };
        };
        {
            var _err = (_w.flush() : stdgo.Error);
            if (_err != null) {
                _t.errorf(("w.Flush() = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __0 = (_rfw._writeBytes : stdgo.GoInt), __1 = (16 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("wrote %v bytes with Write, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (_rfw._readFromBytes : stdgo.GoInt), __1 = ((_input.length) - (16 : stdgo.GoInt) : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("wrote %v bytes with ReadFrom, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
