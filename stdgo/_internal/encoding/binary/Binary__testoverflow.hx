package stdgo._internal.encoding.binary;
function _testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _buf:stdgo.Slice<stdgo.GoUInt8>, _x0:stdgo.GoUInt64, _n0:stdgo.GoInt, _err0:stdgo.Error):Void {
        var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_buf), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_x != (0i64 : stdgo.GoUInt64)) || (_n != _n0) : Bool)) {
            @:check2r _t.errorf(("Uvarint(% X): got x = %d, n = %d; want 0, %d" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_n0));
        };
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(_buf);
        var _len = (@:check2r _r.len() : stdgo.GoInt);
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readuvarint.readUvarint(stdgo.Go.asInterface(_r)), _x:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_x != _x0) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_err0)) : Bool)) {
            @:check2r _t.errorf(("ReadUvarint(%v): got x = %d, err = %s; want %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_x0), stdgo.Go.toInterface(_err0));
        };
        {
            var _read = (_len - @:check2r _r.len() : stdgo.GoInt);
            if ((_read > (10 : stdgo.GoInt) : Bool)) {
                @:check2r _t.errorf(("ReadUvarint(%v): read more than MaxVarintLen64 bytes, got %d" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_read));
            };
        };
    }
