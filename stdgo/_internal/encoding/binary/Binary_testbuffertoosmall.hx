package stdgo._internal.encoding.binary;
function testBufferTooSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L123"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_buf.length) : Bool)) {
                var _buf = (_buf.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_buf), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L126"
                if (((_x != (0i64 : stdgo.GoUInt64)) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L127"
                    _t.errorf(("Uvarint(%v): got x = %d, n = %d" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n));
                };
var __tmp__ = stdgo._internal.encoding.binary.Binary_readuvarint.readUvarint(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_buf))), _x:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
var _wantErr = (stdgo._internal.io.Io_eof.eOF : stdgo.Error);
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L132"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _wantErr = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L135"
                if (((_x != (0i64 : stdgo.GoUInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_wantErr)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L136"
                    _t.errorf(("ReadUvarint(%v): got x = %d, err = %s" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
                };
                _i++;
            };
        };
    }
