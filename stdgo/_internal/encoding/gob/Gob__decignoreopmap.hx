package stdgo._internal.encoding.gob;
var _decIgnoreOpMap : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>();
        x.__defaultValue__ = () -> (null : stdgo._internal.encoding.gob.Gob_t_decop.T_decOp);
        x.set(stdgo._internal.encoding.gob.Gob__tbool._tBool, stdgo._internal.encoding.gob.Gob__ignoreuint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tint._tInt, stdgo._internal.encoding.gob.Gob__ignoreuint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tuint._tUint, stdgo._internal.encoding.gob.Gob__ignoreuint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tfloat._tFloat, stdgo._internal.encoding.gob.Gob__ignoreuint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tbytes._tBytes, stdgo._internal.encoding.gob.Gob__ignoreuint8array._ignoreUint8Array);
x.set(stdgo._internal.encoding.gob.Gob__tstring._tString, stdgo._internal.encoding.gob.Gob__ignoreuint8array._ignoreUint8Array);
x.set(stdgo._internal.encoding.gob.Gob__tcomplex._tComplex, stdgo._internal.encoding.gob.Gob__ignoretwouints._ignoreTwoUints);
        x;
    } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>);
