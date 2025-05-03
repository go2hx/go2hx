package stdgo._internal.encoding.gob;
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _it:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        var _err:stdgo.Error = (null : stdgo.Error);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L647"
        _b.reset();
        _it = ({ maxi : (128i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o1:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L656"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L658"
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L659"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-129i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L664"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L665"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L667"
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L668"
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L672"
        _b.reset();
        _it = ({ maxi : (32768i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o2:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L681"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L683"
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L684"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-32769i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L689"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L690"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L692"
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L693"
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L697"
        _b.reset();
        _it = ({ maxi : (2147483648i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o3:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L706"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L708"
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L709"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-2147483649i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L714"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L715"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L717"
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L718"
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L722"
        _b.reset();
        _it = ({ maxu : (256i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o4:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L730"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o4) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L732"
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L733"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L737"
        _b.reset();
        _it = ({ maxu : (65536i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o5:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L745"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o5) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L747"
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L748"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L752"
        _b.reset();
        _it = ({ maxu : (4294967296i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o6:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L760"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o6) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L762"
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L763"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L767"
        _b.reset();
        _it = ({ maxf : (6.805646932770577e+38 : stdgo.GoFloat64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o7:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L776"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o7) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L778"
        if (((_err == null) || (_err.error() != ("value for \"Maxf\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L779"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for float32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L783"
        _b.reset();
        _it = ({ maxc : new stdgo.GoComplex128((6.805646932770577e+38 : stdgo.GoFloat64), (6.805646932770577e+38 : stdgo.GoFloat64)) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o8:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L792"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o8) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L794"
        if (((_err == null) || (_err.error() != ("value for \"Maxc\" out of range" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L795"
            _t.error(stdgo.Go.toInterface(("wrong overflow error for complex64:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
