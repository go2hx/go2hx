package stdgo._internal.encoding.gob;
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _it:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        var _err:stdgo.Error = (null : stdgo.Error);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        _b.reset();
        _it = ({ maxi : (128i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o1:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178);
        var _o1__pointer__ = (stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>);
        var _o1__pointer__ = (stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>);
        var _o1__pointer__ = (stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>);
        var _o1__pointer__ = (stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o1__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-129i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o1__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxi : (32768i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o2:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677);
        var _o2__pointer__ = (stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>);
        var _o2__pointer__ = (stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>);
        var _o2__pointer__ = (stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>);
        var _o2__pointer__ = (stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o2__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-32769i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o2__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxi : (2147483648i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o3:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183);
        var _o3__pointer__ = (stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>);
        var _o3__pointer__ = (stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>);
        var _o3__pointer__ = (stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>);
        var _o3__pointer__ = (stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o3__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-2147483649i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        _b.reset();
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o3__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong underflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxu : (256i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o4:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689);
        var _o4__pointer__ = (stdgo.Go.setRef(_o4) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689>);
        var _o4__pointer__ = (stdgo.Go.setRef(_o4) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689>);
        var _o4__pointer__ = (stdgo.Go.setRef(_o4) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689>);
        var _o4__pointer__ = (stdgo.Go.setRef(_o4) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o4__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxu : (65536i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o5:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967);
        var _o5__pointer__ = (stdgo.Go.setRef(_o5) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967>);
        var _o5__pointer__ = (stdgo.Go.setRef(_o5) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967>);
        var _o5__pointer__ = (stdgo.Go.setRef(_o5) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967>);
        var _o5__pointer__ = (stdgo.Go.setRef(_o5) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o5__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxu : (4294967296i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o6:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249);
        var _o6__pointer__ = (stdgo.Go.setRef(_o6) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249>);
        var _o6__pointer__ = (stdgo.Go.setRef(_o6) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249>);
        var _o6__pointer__ = (stdgo.Go.setRef(_o6) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249>);
        var _o6__pointer__ = (stdgo.Go.setRef(_o6) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o6__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for uint32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxf : (6.805646932770577e+38 : stdgo.GoFloat64) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o7:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533);
        var _o7__pointer__ = (stdgo.Go.setRef(_o7) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533>);
        var _o7__pointer__ = (stdgo.Go.setRef(_o7) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533>);
        var _o7__pointer__ = (stdgo.Go.setRef(_o7) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533>);
        var _o7__pointer__ = (stdgo.Go.setRef(_o7) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o7__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxf\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for float32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _b.reset();
        _it = ({ maxc : new stdgo.GoComplex128((6.805646932770577e+38 : stdgo.GoFloat64), (6.805646932770577e+38 : stdgo.GoFloat64)) } : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___inputT_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o8:stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862 = ({} : stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862);
        var _o8__pointer__ = (stdgo.Go.setRef(_o8) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862>);
        var _o8__pointer__ = (stdgo.Go.setRef(_o8) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862>);
        var _o8__pointer__ = (stdgo.Go.setRef(_o8) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862>);
        var _o8__pointer__ = (stdgo.Go.setRef(_o8) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testOverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862>);
        _enc.encode(stdgo.Go.toInterface(_it));
        _err = _dec.decode(stdgo.Go.toInterface(_o8__pointer__));
        if (((_err == null) || (_err.error() != ("value for \"Maxc\" out of range" : stdgo.GoString)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("wrong overflow error for complex64:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
