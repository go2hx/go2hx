package stdgo._internal.encoding.gob;
function testNesting(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _rt = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>);
        _rt.a = ("level1" : stdgo.GoString);
        _rt.next = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>);
        _rt.next.a = ("level2" : stdgo.GoString);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_rt));
        var _drt:stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135 = ({} : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135);
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_drt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>))) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decoder error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_drt.a != (_rt.a)) {
            _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface((_rt : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135)), stdgo.Go.toInterface(_drt));
        };
        if (_drt.next == null || (_drt.next : Dynamic).__nil__) {
            _t.errorf(("nesting: recursion failed" : stdgo.GoString));
        };
        if (_drt.next.a != (_rt.next.a)) {
            _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface((_rt.next : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135)), stdgo.Go.toInterface((_drt.next : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135)));
        };
    }
