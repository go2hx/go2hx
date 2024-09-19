package stdgo._internal.encoding.gob;
var _decIgnoreOpMap : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>();
        x.__defaultValue__ = () -> (null : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp);
        x.set(stdgo._internal.encoding.gob.Gob__tBool._tBool, stdgo._internal.encoding.gob.Gob__ignoreUint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tInt._tInt, stdgo._internal.encoding.gob.Gob__ignoreUint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tUint._tUint, stdgo._internal.encoding.gob.Gob__ignoreUint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tFloat._tFloat, stdgo._internal.encoding.gob.Gob__ignoreUint._ignoreUint);
x.set(stdgo._internal.encoding.gob.Gob__tBytes._tBytes, stdgo._internal.encoding.gob.Gob__ignoreUint8Array._ignoreUint8Array);
x.set(stdgo._internal.encoding.gob.Gob__tString._tString, stdgo._internal.encoding.gob.Gob__ignoreUint8Array._ignoreUint8Array);
x.set(stdgo._internal.encoding.gob.Gob__tComplex._tComplex, stdgo._internal.encoding.gob.Gob__ignoreTwoUints._ignoreTwoUints);
        x;
    } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>);
