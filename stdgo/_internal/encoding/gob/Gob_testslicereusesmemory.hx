package stdgo._internal.encoding.gob;
function testSliceReusesMemory(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        {
            var _x = ((("abcd" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("bytes: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = ((("ABCDE" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]);
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
            _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("bytes: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_x, _y)) {
                @:check2r _t.errorf(("bytes: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
                @:check2r _t.errorf(("bytes: unnecessary reallocation" : stdgo.GoString));
            };
        };
        {
            var _x = ((("abcd" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("ints: encode: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _y = ((("ABCDE" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
            var _addr = stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]);
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf));
            _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>)));
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("ints: decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y))) {
                @:check2r _t.errorf(("ints: expected %q got %q\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
            if (_addr != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
                @:check2r _t.errorf(("ints: unnecessary reallocation" : stdgo.GoString));
            };
        };
    }
