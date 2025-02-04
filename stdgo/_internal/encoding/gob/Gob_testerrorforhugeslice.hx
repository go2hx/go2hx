package stdgo._internal.encoding.gob;
function testErrorForHugeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _slice = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_slice)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _buf.bytes()[((@:check2r _buf.len() - (_slice.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (250 : stdgo.GoUInt8);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode: no error" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("slice too big" : stdgo.GoString))) {
            @:check2r _t.fatalf(("decode: expected slice too big error, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err.error()));
        };
    }
