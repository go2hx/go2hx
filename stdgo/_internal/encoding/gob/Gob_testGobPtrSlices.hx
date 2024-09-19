package stdgo._internal.encoding.gob;
function testGobPtrSlices(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _in = (new stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>(2, 2, ...[(new stdgo._internal.encoding.gob.Gob_Bug3.Bug3((1 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>)) : stdgo._internal.encoding.gob.Gob_Bug3.Bug3), (new stdgo._internal.encoding.gob.Gob_Bug3.Bug3((2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>)) : stdgo._internal.encoding.gob.Gob_Bug3.Bug3)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface((stdgo.Go.setRef(_in) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>>))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug3.Bug3>>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            _t.fatalf(("got %v; wanted %v" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_in));
        };
    }