package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReadWriteRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _byteBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _w = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface(_byteBuf));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _r = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_r < (1000 : stdgo.GoInt32) : Bool), _r++, {
                var _size = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_buf, _r) : stdgo.GoInt);
                var __tmp__ = _w.writeRune(_r), _nbytes:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("WriteRune(0x%x) error: %s" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_err));
                };
                if (_nbytes != (_size)) {
                    _t.fatalf(("WriteRune(0x%x) expected %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_nbytes));
                };
            });
        };
        _w.flush();
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_byteBuf));
        {
            var _r1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_r1 < (1000 : stdgo.GoInt32) : Bool), _r1++, {
                var _size = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_buf, _r1) : stdgo.GoInt);
                var __tmp__ = _r.readRune(), _nr:stdgo.GoInt32 = __tmp__._0, _nbytes:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_nr != (_r1) || _nbytes != (_size) : Bool) || (_err != null) : Bool)) {
                    _t.fatalf(("ReadRune(0x%x) got 0x%x,%d not 0x%x,%d (err=%s)" : stdgo.GoString), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_nr), stdgo.Go.toInterface(_nbytes), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
