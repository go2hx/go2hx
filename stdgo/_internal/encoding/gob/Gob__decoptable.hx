package stdgo._internal.encoding.gob;
var _decOpTable : stdgo.GoArray<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> = {
        var s:stdgo.GoArray<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> = new stdgo.GoArray<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>(25, 25, ...[for (i in 0 ... 25) (null : stdgo._internal.encoding.gob.Gob_t_decop.T_decOp)]);
        s[1] = stdgo._internal.encoding.gob.Gob__decbool._decBool;
        s[3] = stdgo._internal.encoding.gob.Gob__decint8._decInt8;
        s[4] = stdgo._internal.encoding.gob.Gob__decint16._decInt16;
        s[5] = stdgo._internal.encoding.gob.Gob__decint32._decInt32;
        s[6] = stdgo._internal.encoding.gob.Gob__decint64._decInt64;
        s[8] = stdgo._internal.encoding.gob.Gob__decuint8._decUint8;
        s[9] = stdgo._internal.encoding.gob.Gob__decuint16._decUint16;
        s[10] = stdgo._internal.encoding.gob.Gob__decuint32._decUint32;
        s[11] = stdgo._internal.encoding.gob.Gob__decuint64._decUint64;
        s[13] = stdgo._internal.encoding.gob.Gob__decfloat32._decFloat32;
        s[14] = stdgo._internal.encoding.gob.Gob__decfloat64._decFloat64;
        s[15] = stdgo._internal.encoding.gob.Gob__deccomplex64._decComplex64;
        s[16] = stdgo._internal.encoding.gob.Gob__deccomplex128._decComplex128;
        s[24] = stdgo._internal.encoding.gob.Gob__decstring._decString;
        s;
    };
