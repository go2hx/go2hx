package stdgo._internal.encoding.binary;
function testBufferTooSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_buf.length) : Bool), _i++, {
                var _buf = (_buf.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_buf), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                if (((_x != (0i64 : stdgo.GoUInt64)) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                    _t.errorf(("Uvarint(%v): got x = %d, n = %d" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n));
                };
                var __tmp__ = stdgo._internal.encoding.binary.Binary_readUvarint.readUvarint(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_buf))), _x:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _wantErr = (stdgo._internal.io.Io_eof.eof : stdgo.Error);
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _wantErr = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                if (((_x != (0i64 : stdgo.GoUInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_wantErr)) : Bool)) {
                    _t.errorf(("ReadUvarint(%v): got x = %d, err = %s" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
                };
            });
        };
    }