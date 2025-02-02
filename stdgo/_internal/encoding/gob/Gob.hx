package stdgo._internal.encoding.gob;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.encoding.gob.Gob__errBadUint._errBadUint, __tmp__1 = stdgo._internal.encoding.gob.Gob__errBadType._errBadType, __tmp__2 = stdgo._internal.encoding.gob.Gob__errRange._errRange, __tmp__3 = stdgo._internal.encoding.gob.Gob__maxIgnoreNestingDepth._maxIgnoreNestingDepth, __tmp__4 = stdgo._internal.encoding.gob.Gob__emptyStructType._emptyStructType, __tmp__5 = stdgo._internal.encoding.gob.Gob__errBadCount._errBadCount, __tmp__6 = stdgo._internal.encoding.gob.Gob__decArrayHelper._decArrayHelper, __tmp__7 = stdgo._internal.encoding.gob.Gob__decSliceHelper._decSliceHelper, __tmp__8 = stdgo._internal.encoding.gob.Gob__decOpTable._decOpTable, __tmp__9 = stdgo._internal.encoding.gob.Gob__encArrayHelper._encArrayHelper, __tmp__10 = stdgo._internal.encoding.gob.Gob__encSliceHelper._encSliceHelper, __tmp__11 = stdgo._internal.encoding.gob.Gob__encBufferPool._encBufferPool, __tmp__12 = stdgo._internal.encoding.gob.Gob__encOpTable._encOpTable, __tmp__13 = stdgo._internal.encoding.gob.Gob__spaceForLength._spaceForLength, __tmp__14 = stdgo._internal.encoding.gob.Gob__gobEncoderInterfaceType._gobEncoderInterfaceType, __tmp__15 = stdgo._internal.encoding.gob.Gob__gobDecoderInterfaceType._gobDecoderInterfaceType, __tmp__16 = stdgo._internal.encoding.gob.Gob__binaryMarshalerInterfaceType._binaryMarshalerInterfaceType, __tmp__17 = stdgo._internal.encoding.gob.Gob__binaryUnmarshalerInterfaceType._binaryUnmarshalerInterfaceType, __tmp__18 = stdgo._internal.encoding.gob.Gob__textMarshalerInterfaceType._textMarshalerInterfaceType, __tmp__19 = stdgo._internal.encoding.gob.Gob__textUnmarshalerInterfaceType._textUnmarshalerInterfaceType, __tmp__20 = stdgo._internal.encoding.gob.Gob__wireTypeType._wireTypeType, __tmp__21 = stdgo._internal.encoding.gob.Gob__types._types, __tmp__22 = stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice, __tmp__23 = stdgo._internal.encoding.gob.Gob__tBool._tBool, __tmp__24 = stdgo._internal.encoding.gob.Gob__tInt._tInt, __tmp__25 = stdgo._internal.encoding.gob.Gob__tUint._tUint, __tmp__26 = stdgo._internal.encoding.gob.Gob__tFloat._tFloat, __tmp__27 = stdgo._internal.encoding.gob.Gob__tBytes._tBytes, __tmp__28 = stdgo._internal.encoding.gob.Gob__tString._tString, __tmp__29 = stdgo._internal.encoding.gob.Gob__tComplex._tComplex, __tmp__30 = stdgo._internal.encoding.gob.Gob__decIgnoreOpMap._decIgnoreOpMap, __tmp__31 = stdgo._internal.encoding.gob.Gob__tInterface._tInterface, __tmp__32 = stdgo._internal.encoding.gob.Gob__tReserved7._tReserved7, __tmp__33 = stdgo._internal.encoding.gob.Gob__tReserved6._tReserved6, __tmp__34 = stdgo._internal.encoding.gob.Gob__tReserved5._tReserved5, __tmp__35 = stdgo._internal.encoding.gob.Gob__tReserved4._tReserved4, __tmp__36 = stdgo._internal.encoding.gob.Gob__tReserved3._tReserved3, __tmp__37 = stdgo._internal.encoding.gob.Gob__tReserved2._tReserved2, __tmp__38 = stdgo._internal.encoding.gob.Gob__tReserved1._tReserved1, __tmp__39 = stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit, __tmp__40 = stdgo._internal.encoding.gob.Gob__tWireType._tWireType, __tmp__41 = stdgo._internal.encoding.gob.Gob__doFuzzTests._doFuzzTests, __tmp__42 = stdgo._internal.encoding.gob.Gob__encodeT._encodeT, __tmp__43 = stdgo._internal.encoding.gob.Gob__boolResult._boolResult, __tmp__44 = stdgo._internal.encoding.gob.Gob__signedResult._signedResult, __tmp__45 = stdgo._internal.encoding.gob.Gob__unsignedResult._unsignedResult, __tmp__46 = stdgo._internal.encoding.gob.Gob__floatResult._floatResult, __tmp__47 = stdgo._internal.encoding.gob.Gob__complexResult._complexResult, __tmp__48 = stdgo._internal.encoding.gob.Gob__bytesResult._bytesResult, __tmp__49 = stdgo._internal.encoding.gob.Gob__singletons._singletons, __tmp__50 = stdgo._internal.encoding.gob.Gob__unsupportedValues._unsupportedValues, __tmp__51 = stdgo._internal.encoding.gob.Gob__singleTests._singleTests, __tmp__52 = stdgo._internal.encoding.gob.Gob__ignoreTests._ignoreTests, __tmp__53 = stdgo._internal.encoding.gob.Gob__badDataTests._badDataTests, __tmp__54 = stdgo._internal.encoding.gob.Gob__basicTypes._basicTypes;
            var __0:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp = (null : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp), __1:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp = (null : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp);
var _uop = __1, _iop = __0;
            {
                final __value__ = (32 : stdgo.GoInt);
                if (__value__ == ((32 : stdgo.GoInt))) {
                    _iop = stdgo._internal.encoding.gob.Gob__decInt32._decInt32;
                    _uop = stdgo._internal.encoding.gob.Gob__decUint32._decUint32;
                } else if (__value__ == ((64 : stdgo.GoInt))) {
                    _iop = stdgo._internal.encoding.gob.Gob__decInt64._decInt64;
                    _uop = stdgo._internal.encoding.gob.Gob__decUint64._decUint64;
                } else {
                    throw stdgo.Go.toInterface(("gob: unknown size of int/uint" : stdgo.GoString));
                };
            };
            stdgo._internal.encoding.gob.Gob__decOpTable._decOpTable[((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind) : stdgo.GoInt)] = _iop;
            stdgo._internal.encoding.gob.Gob__decOpTable._decOpTable[((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind) : stdgo.GoInt)] = _uop;
            {
                final __value__ = (32 : stdgo.GoInt);
                if (__value__ == ((32 : stdgo.GoInt))) {
                    _uop = stdgo._internal.encoding.gob.Gob__decUint32._decUint32;
                } else if (__value__ == ((64 : stdgo.GoInt))) {
                    _uop = stdgo._internal.encoding.gob.Gob__decUint64._decUint64;
                } else {
                    throw stdgo.Go.toInterface(("gob: unknown size of uintptr" : stdgo.GoString));
                };
            };
            stdgo._internal.encoding.gob.Gob__decOpTable._decOpTable[((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind) : stdgo.GoInt)] = _uop;
            stdgo._internal.encoding.gob.Gob__checkId._checkId((16 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__tWireType._tWireType);
            stdgo._internal.encoding.gob.Gob__checkId._checkId((17 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkId._checkId((18 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_CommonType.CommonType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkId._checkId((19 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkId._checkId((20 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkId._checkId((21 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkId._checkId((23 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>)))).elem())._id);
            (stdgo._internal.encoding.gob.Gob__builtinIdToTypeSlice._builtinIdToTypeSlice.__slice__(0) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType>).__copyTo__(stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice);
            {
                var _nextId = (stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice.length : stdgo.GoInt);
                if ((_nextId > (64 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintln.sprintln(stdgo.Go.toInterface(("nextId too large:" : stdgo.GoString)), stdgo.Go.toInterface(_nextId)));
                };
            };
            stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice = (stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice.__slice__(0, (64 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType>);
            stdgo._internal.encoding.gob.Gob__registerBasics._registerBasics();
            stdgo._internal.encoding.gob.Gob__wireTypeUserInfo._wireTypeUserInfo = stdgo._internal.encoding.gob.Gob__userType._userType(stdgo._internal.encoding.gob.Gob__wireTypeType._wireTypeType);
            @:check2 stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.store(stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit));
            stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit = (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
