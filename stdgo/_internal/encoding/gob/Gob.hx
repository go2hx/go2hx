package stdgo._internal.encoding.gob;
@:keep var __init_go2hx__ = {
        try {
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
            stdgo._internal.encoding.gob.Gob__checkId._checkId((21 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType>))).elem())._id);
            stdgo._internal.encoding.gob.Gob__checkId._checkId((23 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), stdgo._internal.encoding.gob.Gob__mustGetTypeInfo._mustGetTypeInfo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType>)))).elem())._id);
            stdgo.Go.copySlice((stdgo._internal.encoding.gob.Gob__builtinIdToTypeSlice._builtinIdToTypeSlice.__slice__(0) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType>), stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice);
            {
                var _nextId = (stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice.length : stdgo.GoInt);
                if ((_nextId > (64 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintln.sprintln(stdgo.Go.toInterface(("nextId too large:" : stdgo.GoString)), stdgo.Go.toInterface(_nextId)));
                };
            };
            stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice = (stdgo._internal.encoding.gob.Gob__idToTypeSlice._idToTypeSlice.__slice__(0, (64 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType>);
            stdgo._internal.encoding.gob.Gob__registerBasics._registerBasics();
            stdgo._internal.encoding.gob.Gob__wireTypeUserInfo._wireTypeUserInfo = stdgo._internal.encoding.gob.Gob__userType._userType(stdgo._internal.encoding.gob.Gob__wireTypeType._wireTypeType);
            stdgo._internal.encoding.gob.Gob__typeInfoMap._typeInfoMap.store(stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit));
            stdgo._internal.encoding.gob.Gob__typeInfoMapInit._typeInfoMapInit = (null : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>>);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
