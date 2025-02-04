package stdgo._internal.encoding.gob;
function testNesting(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _rt = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>);
        (@:checkr _rt ?? throw "null pointer dereference").a = ("level1" : stdgo.GoString);
        (@:checkr _rt ?? throw "null pointer dereference").next = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>);
        (@:checkr (@:checkr _rt ?? throw "null pointer dereference").next ?? throw "null pointer dereference").a = ("level2" : stdgo.GoString);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        @:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        var _drt:stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135 = ({} : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135);
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_drt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decoder error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_drt.a != ((@:checkr _rt ?? throw "null pointer dereference").a)) {
            @:check2r _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_rt : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135))), stdgo.Go.toInterface(stdgo.Go.asInterface(_drt)));
        };
        if ((_drt.next == null || (_drt.next : Dynamic).__nil__)) {
            @:check2r _t.errorf(("nesting: recursion failed" : stdgo.GoString));
        };
        if ((@:checkr _drt.next ?? throw "null pointer dereference").a != ((@:checkr (@:checkr _rt ?? throw "null pointer dereference").next ?? throw "null pointer dereference").a)) {
            @:check2r _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((@:checkr _rt ?? throw "null pointer dereference").next : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135))), stdgo.Go.toInterface(stdgo.Go.asInterface((_drt.next : stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135))));
        };
    }
