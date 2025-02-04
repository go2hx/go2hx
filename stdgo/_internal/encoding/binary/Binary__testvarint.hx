package stdgo._internal.encoding.binary;
function _testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.GoInt64):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.encoding.binary.Binary_putvarint.putVarint(_buf, _x) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.encoding.binary.Binary_varint.varint((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), _y:stdgo.GoInt64 = __tmp__._0, _m:stdgo.GoInt = __tmp__._1;
        if (_x != (_y)) {
            @:check2r _t.errorf(("Varint(%d): got %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
        if (_n != (_m)) {
            @:check2r _t.errorf(("Varint(%d): got n = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n));
        };
        var _buf2 = ((("prefix" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _buf2 = stdgo._internal.encoding.binary.Binary_appendvarint.appendVarint(_buf2, _x);
        if ((_buf2 : stdgo.GoString) != ((("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString))) {
            @:check2r _t.errorf(("AppendVarint(%d): got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_buf2), stdgo.Go.toInterface((("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readvarint.readVarint(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_buf))), _y:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.errorf(("ReadVarint(%d): %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
        };
        if (_x != (_y)) {
            @:check2r _t.errorf(("ReadVarint(%d): got %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
    }
