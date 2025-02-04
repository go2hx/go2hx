package stdgo._internal.encoding.gob;
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _it:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        var _err:stdgo.Error = (null : stdgo.Error);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        @:check2r _b.reset();
        _it = ({ maxi : (128i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o1:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-129i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        @:check2r _b.reset();
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi8_16178.T_testOverflow___localname___outi8_16178>))));
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong underflow error for int8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _b.reset();
        _it = ({ maxi : (32768i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o2:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-32769i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        @:check2r _b.reset();
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677.T_testOverflow___localname___outi16_16677>))));
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong underflow error for int16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _b.reset();
        _it = ({ maxi : (2147483648i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o3:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxi\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _it = ({ mini : (-2147483649i64 : stdgo.GoInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        @:check2r _b.reset();
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o3) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183.T_testOverflow___localname___outi32_17183>))));
        if (((_err == null) || (_err.error() != ("value for \"Mini\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong underflow error for int32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _b.reset();
        _it = ({ maxu : (256i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o4:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o4) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu8_17689.T_testOverflow___localname___outu8_17689>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for uint8:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _b.reset();
        _it = ({ maxu : (65536i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o5:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o5) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967.T_testOverflow___localname___outu16_17967>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for uint16:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _b.reset();
        _it = ({ maxu : (4294967296i64 : stdgo.GoUInt64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o6:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o6) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249.T_testOverflow___localname___outu32_18249>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxu\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for uint32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _b.reset();
        _it = ({ maxf : (6.805646932770577e+38 : stdgo.GoFloat64) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o7:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o7) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533.T_testOverflow___localname___outf32_18533>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxf\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for float32:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        @:check2r _b.reset();
        _it = ({ maxc : new stdgo.GoComplex128((6.805646932770577e+38 : stdgo.GoFloat64), (6.805646932770577e+38 : stdgo.GoFloat64)) } : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___inputt_15885.T_testOverflow___localname___inputT_15885);
        {};
        var _o8:stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862 = ({} : stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862);
        @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_it)));
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o8) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outc64_18862.T_testOverflow___localname___outc64_18862>))));
        if (((_err == null) || (_err.error() != ("value for \"Maxc\" out of range" : stdgo.GoString)) : Bool)) {
            @:check2r _t.error(stdgo.Go.toInterface(("wrong overflow error for complex64:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
