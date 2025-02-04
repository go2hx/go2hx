package stdgo._internal.encoding.gob;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.encoding.gob.Gob__errbaduint._errBadUint, __tmp__1 = stdgo._internal.encoding.gob.Gob__errbadtype._errBadType, __tmp__2 = stdgo._internal.encoding.gob.Gob__errrange._errRange, __tmp__3 = stdgo._internal.encoding.gob.Gob__maxignorenestingdepth._maxIgnoreNestingDepth, __tmp__4 = stdgo._internal.encoding.gob.Gob__emptystructtype._emptyStructType, __tmp__5 = stdgo._internal.encoding.gob.Gob__errbadcount._errBadCount, __tmp__6 = stdgo._internal.encoding.gob.Gob__decarrayhelper._decArrayHelper, __tmp__7 = stdgo._internal.encoding.gob.Gob__decslicehelper._decSliceHelper, __tmp__8 = stdgo._internal.encoding.gob.Gob__decoptable._decOpTable, __tmp__9 = stdgo._internal.encoding.gob.Gob__encarrayhelper._encArrayHelper, __tmp__10 = stdgo._internal.encoding.gob.Gob__encslicehelper._encSliceHelper, __tmp__11 = stdgo._internal.encoding.gob.Gob__encbufferpool._encBufferPool, __tmp__12 = stdgo._internal.encoding.gob.Gob__encoptable._encOpTable, __tmp__13 = stdgo._internal.encoding.gob.Gob__spaceforlength._spaceForLength, __tmp__14 = stdgo._internal.encoding.gob.Gob__gobencoderinterfacetype._gobEncoderInterfaceType, __tmp__15 = stdgo._internal.encoding.gob.Gob__gobdecoderinterfacetype._gobDecoderInterfaceType, __tmp__16 = stdgo._internal.encoding.gob.Gob__binarymarshalerinterfacetype._binaryMarshalerInterfaceType, __tmp__17 = stdgo._internal.encoding.gob.Gob__binaryunmarshalerinterfacetype._binaryUnmarshalerInterfaceType, __tmp__18 = stdgo._internal.encoding.gob.Gob__textmarshalerinterfacetype._textMarshalerInterfaceType, __tmp__19 = stdgo._internal.encoding.gob.Gob__textunmarshalerinterfacetype._textUnmarshalerInterfaceType, __tmp__20 = stdgo._internal.encoding.gob.Gob__wiretypetype._wireTypeType, __tmp__21 = stdgo._internal.encoding.gob.Gob__types._types, __tmp__22 = stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice, __tmp__23 = stdgo._internal.encoding.gob.Gob__tbool._tBool, __tmp__24 = stdgo._internal.encoding.gob.Gob__tint._tInt, __tmp__25 = stdgo._internal.encoding.gob.Gob__tuint._tUint, __tmp__26 = stdgo._internal.encoding.gob.Gob__tfloat._tFloat, __tmp__27 = stdgo._internal.encoding.gob.Gob__tbytes._tBytes, __tmp__28 = stdgo._internal.encoding.gob.Gob__tstring._tString, __tmp__29 = stdgo._internal.encoding.gob.Gob__tcomplex._tComplex, __tmp__30 = stdgo._internal.encoding.gob.Gob__decignoreopmap._decIgnoreOpMap, __tmp__31 = stdgo._internal.encoding.gob.Gob__tinterface._tInterface, __tmp__32 = stdgo._internal.encoding.gob.Gob__treserved7._tReserved7, __tmp__33 = stdgo._internal.encoding.gob.Gob__treserved6._tReserved6, __tmp__34 = stdgo._internal.encoding.gob.Gob__treserved5._tReserved5, __tmp__35 = stdgo._internal.encoding.gob.Gob__treserved4._tReserved4, __tmp__36 = stdgo._internal.encoding.gob.Gob__treserved3._tReserved3, __tmp__37 = stdgo._internal.encoding.gob.Gob__treserved2._tReserved2, __tmp__38 = stdgo._internal.encoding.gob.Gob__treserved1._tReserved1, __tmp__39 = stdgo._internal.encoding.gob.Gob__typeinfomapinit._typeInfoMapInit, __tmp__40 = stdgo._internal.encoding.gob.Gob__twiretype._tWireType, __tmp__41 = stdgo._internal.encoding.gob.Gob__dofuzztests._doFuzzTests, __tmp__42 = stdgo._internal.encoding.gob.Gob__encodet._encodeT, __tmp__43 = stdgo._internal.encoding.gob.Gob__boolresult._boolResult, __tmp__44 = stdgo._internal.encoding.gob.Gob__signedresult._signedResult, __tmp__45 = stdgo._internal.encoding.gob.Gob__unsignedresult._unsignedResult, __tmp__46 = stdgo._internal.encoding.gob.Gob__floatresult._floatResult, __tmp__47 = stdgo._internal.encoding.gob.Gob__complexresult._complexResult, __tmp__48 = stdgo._internal.encoding.gob.Gob__bytesresult._bytesResult, __tmp__49 = stdgo._internal.encoding.gob.Gob__singletons._singletons, __tmp__50 = stdgo._internal.encoding.gob.Gob__unsupportedvalues._unsupportedValues, __tmp__51 = stdgo._internal.encoding.gob.Gob__singletests._singleTests, __tmp__52 = stdgo._internal.encoding.gob.Gob__ignoretests._ignoreTests, __tmp__53 = stdgo._internal.encoding.gob.Gob__baddatatests._badDataTests, __tmp__54 = stdgo._internal.encoding.gob.Gob__basictypes._basicTypes;
            var __0:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp = (null : stdgo._internal.encoding.gob.Gob_t_decop.T_decOp), __1:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp = (null : stdgo._internal.encoding.gob.Gob_t_decop.T_decOp);
var _uop = __1, _iop = __0;
            {
                final __value__ = (32 : stdgo.GoInt);
                if (__value__ == ((32 : stdgo.GoInt))) {
                    _iop = stdgo._internal.encoding.gob.Gob__decint32._decInt32;
                    _uop = stdgo._internal.encoding.gob.Gob__decuint32._decUint32;
                } else if (__value__ == ((64 : stdgo.GoInt))) {
                    _iop = stdgo._internal.encoding.gob.Gob__decint64._decInt64;
                    _uop = stdgo._internal.encoding.gob.Gob__decuint64._decUint64;
                } else {
                    throw stdgo.Go.toInterface(("gob: unknown size of int/uint" : stdgo.GoString));
                };
            };
            stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((2u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)] = _iop;
            stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((7u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)] = _uop;
            {
                final __value__ = (32 : stdgo.GoInt);
                if (__value__ == ((32 : stdgo.GoInt))) {
                    _uop = stdgo._internal.encoding.gob.Gob__decuint32._decUint32;
                } else if (__value__ == ((64 : stdgo.GoInt))) {
                    _uop = stdgo._internal.encoding.gob.Gob__decuint64._decUint64;
                } else {
                    throw stdgo.Go.toInterface(("gob: unknown size of uintptr" : stdgo.GoString));
                };
            };
            stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[((12u32 : stdgo._internal.reflect.Reflect_kind.Kind) : stdgo.GoInt)] = _uop;
            stdgo._internal.encoding.gob.Gob__checkid._checkId((16 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), stdgo._internal.encoding.gob.Gob__twiretype._tWireType);
            stdgo._internal.encoding.gob.Gob__checkid._checkId((17 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_arraytype.T_arrayType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkid._checkId((18 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_commontype.CommonType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkid._checkId((19 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkid._checkId((20 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkid._checkId((21 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType>)))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkid._checkId((23 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_maptype.T_mapType>)))).elem())._id);
            (stdgo._internal.encoding.gob.Gob__builtinidtotypeslice._builtinIdToTypeSlice.__slice__(0) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType>).__copyTo__(stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice);
            {
                var _nextId = (stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice.length : stdgo.GoInt);
                if ((_nextId > (64 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintln.sprintln(stdgo.Go.toInterface(("nextId too large:" : stdgo.GoString)), stdgo.Go.toInterface(_nextId)));
                };
            };
            stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice = (stdgo._internal.encoding.gob.Gob__idtotypeslice._idToTypeSlice.__slice__(0, (64 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType>);
            stdgo._internal.encoding.gob.Gob__registerbasics._registerBasics();
            stdgo._internal.encoding.gob.Gob__wiretypeuserinfo._wireTypeUserInfo = stdgo._internal.encoding.gob.Gob__usertype._userType(stdgo._internal.encoding.gob.Gob__wiretypetype._wireTypeType);
            @:check2 stdgo._internal.encoding.gob.Gob__typeinfomap._typeInfoMap.store(stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__typeinfomapinit._typeInfoMapInit));
            stdgo._internal.encoding.gob.Gob__typeinfomapinit._typeInfoMapInit = (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>>);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
