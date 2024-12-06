package stdgo._internal.encoding.gob;
function testMapBug1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _in = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>) : stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap);
        _in[("val1" : stdgo.GoString)] = (new stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem(("elem1" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
        _in[("val2" : stdgo.GoString)] = (new stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem(("elem2" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(_in)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _out = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>) : stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap);
        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            _t.errorf(("mismatch: %v %v" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out));
        };
    }
