package stdgo._internal.encoding.gob;
function testGobPtrSlices(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = (new stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>(2, 2, ...[(new stdgo._internal.encoding.gob.Gob_bug3.Bug3((1 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>)) : stdgo._internal.encoding.gob.Gob_bug3.Bug3), (new stdgo._internal.encoding.gob.Gob_bug3.Bug3((2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>)) : stdgo._internal.encoding.gob.Gob_bug3.Bug3)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>>))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>);
        _err = @:check2r stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug3.Bug3>>>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            @:check2r _t.fatalf(("got %v; wanted %v" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_in));
        };
    }
