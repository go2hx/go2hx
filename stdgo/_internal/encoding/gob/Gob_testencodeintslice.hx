package stdgo._internal.encoding.gob;
function testEncodeIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s8 = (new stdgo.Slice<stdgo.GoInt8>(9, 9, ...[(1 : stdgo.GoInt8), (5 : stdgo.GoInt8), (12 : stdgo.GoInt8), (22 : stdgo.GoInt8), (35 : stdgo.GoInt8), (51 : stdgo.GoInt8), (70 : stdgo.GoInt8), (92 : stdgo.GoInt8), (117 : stdgo.GoInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
        var _s16 = (new stdgo.Slice<stdgo.GoInt16>(9, 9, ...[(145 : stdgo.GoInt16), (176 : stdgo.GoInt16), (210 : stdgo.GoInt16), (247 : stdgo.GoInt16), (287 : stdgo.GoInt16), (330 : stdgo.GoInt16), (376 : stdgo.GoInt16), (425 : stdgo.GoInt16), (477 : stdgo.GoInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt16>);
        var _s32 = (new stdgo.Slice<stdgo.GoInt32>(9, 9, ...[(532 : stdgo.GoInt32), (590 : stdgo.GoInt32), (651 : stdgo.GoInt32), (715 : stdgo.GoInt32), (782 : stdgo.GoInt32), (852 : stdgo.GoInt32), (925 : stdgo.GoInt32), (1001 : stdgo.GoInt32), (1080 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _s64 = (new stdgo.Slice<stdgo.GoInt64>(9, 9, ...[(1162i64 : stdgo.GoInt64), (1247i64 : stdgo.GoInt64), (1335i64 : stdgo.GoInt64), (1426i64 : stdgo.GoInt64), (1520i64 : stdgo.GoInt64), (1617i64 : stdgo.GoInt64), (1717i64 : stdgo.GoInt64), (1820i64 : stdgo.GoInt64), (1926i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        @:check2r _t.run(("int8" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _sink:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            @:check2r _enc.encode(stdgo.Go.toInterface(_s8));
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            var _res = (new stdgo.Slice<stdgo.GoInt8>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
            @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.Ref<stdgo.Slice<stdgo.GoInt8>>)));
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_s8), stdgo.Go.toInterface(_res))) {
                @:check2r _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s8), stdgo.Go.toInterface(_res));
            };
        });
        @:check2r _t.run(("int16" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _sink:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            @:check2r _enc.encode(stdgo.Go.toInterface(_s16));
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            var _res = (new stdgo.Slice<stdgo.GoInt16>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt16>);
            @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.Ref<stdgo.Slice<stdgo.GoInt16>>)));
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_res))) {
                @:check2r _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_res));
            };
        });
        @:check2r _t.run(("int32" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _sink:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            @:check2r _enc.encode(stdgo.Go.toInterface(_s32));
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            var _res = (new stdgo.Slice<stdgo.GoInt32>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>)));
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_res))) {
                @:check2r _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_res));
            };
        });
        @:check2r _t.run(("int64" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _sink:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            @:check2r _enc.encode(stdgo.Go.toInterface(_s64));
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_sink) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
            var _res = (new stdgo.Slice<stdgo.GoInt64>((9 : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_res) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>)));
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_res))) {
                @:check2r _t.fatalf(("EncodeIntSlice: expected %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_res));
            };
        });
    }
