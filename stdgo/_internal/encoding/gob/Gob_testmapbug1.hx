package stdgo._internal.encoding.gob;
function testMapBug1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem>) : stdgo._internal.encoding.gob.Gob_bug1structmap.Bug1StructMap) : stdgo._internal.encoding.gob.Gob_bug1structmap.Bug1StructMap);
        _in[("val1" : stdgo.GoString)] = (new stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem(("elem1" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem);
        _in[("val2" : stdgo.GoString)] = (new stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem(("elem2" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_in)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _out = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_bug1elem.Bug1Elem>) : stdgo._internal.encoding.gob.Gob_bug1structmap.Bug1StructMap) : stdgo._internal.encoding.gob.Gob_bug1structmap.Bug1StructMap);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug1structmap.Bug1StructMap>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            @:check2r _t.errorf(("mismatch: %v %v" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out));
        };
    }
