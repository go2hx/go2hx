package stdgo._internal.encoding.gob;
function testNesting(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _rt = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>);
        (@:checkr _rt ?? throw "null pointer dereference").a = ("level1" : stdgo.GoString);
        (@:checkr _rt ?? throw "null pointer dereference").next = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>);
        (@:checkr (@:checkr _rt ?? throw "null pointer dereference").next ?? throw "null pointer dereference").a = ("level2" : stdgo.GoString);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L809"
        stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        var _drt:stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135 = ({} : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135);
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_drt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L813"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L814"
            _t.fatal(stdgo.Go.toInterface(("decoder error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L816"
        if (_drt.a != ((@:checkr _rt ?? throw "null pointer dereference").a)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L817"
            _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_rt : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135))), stdgo.Go.toInterface(stdgo.Go.asInterface(_drt)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L819"
        if (({
            final value = _drt.next;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L820"
            _t.errorf(("nesting: recursion failed" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L822"
        if ((@:checkr _drt.next ?? throw "null pointer dereference").a != ((@:checkr (@:checkr _rt ?? throw "null pointer dereference").next ?? throw "null pointer dereference").a)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L823"
            _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((@:checkr _rt ?? throw "null pointer dereference").next : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135))), stdgo.Go.toInterface(stdgo.Go.asInterface((_drt.next : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135))));
        };
    }
