package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testUnreadByteOthers(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _readers:stdgo.Slice<(stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, stdgo.GoUInt8) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }> = (new stdgo.Slice<(stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, stdgo.GoUInt8) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }>(3, 3, ...[_internal.bufio_test.Bufio_test_Reader_static_extension.Reader_static_extension.readBytes, _internal.bufio_test.Bufio_test_Reader_static_extension.Reader_static_extension.readSlice, function(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var __tmp__ = _r.readString(_delim), _data:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            return { _0 : (_data : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        }]) : stdgo.Slice<(stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, stdgo.GoUInt8) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }>);
        for (_rno => _read in _readers) {
            {};
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _buf.writeString(("abcdefg" : stdgo.GoString));
                });
            };
            var _r = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (16 : stdgo.GoInt));
            var _readTo = (function(_delim:stdgo.GoUInt8, _want:stdgo.GoString):Void {
                var __tmp__ = _read(_r, _delim), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("#%d: unexpected error reading to %c: %v" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_delim), stdgo.Go.toInterface(_err));
                };
                {
                    var _got = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_got != (_want)) {
                        _t.fatalf(("#%d: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            } : (stdgo.GoUInt8, stdgo.GoString) -> Void);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _readTo((100 : stdgo.GoUInt8), ("abcd" : stdgo.GoString));
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (3 : stdgo.GoInt) : Bool), _j++, {
                            {
                                var _err = (_r.unreadByte() : stdgo.Error);
                                if (_err != null) {
                                    _t.fatalf(("#%d: unexpected error on UnreadByte: %v" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_err));
                                };
                            };
                            _readTo((100 : stdgo.GoUInt8), ("d" : stdgo.GoString));
                        });
                    };
                    _readTo((103 : stdgo.GoUInt8), ("efg" : stdgo.GoString));
                });
            };
            var __tmp__ = _r.readByte(), __0:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _t.errorf(("#%d: got error %v; want EOF" : stdgo.GoString), stdgo.Go.toInterface(_rno), stdgo.Go.toInterface(_err));
            };
        };
    }
