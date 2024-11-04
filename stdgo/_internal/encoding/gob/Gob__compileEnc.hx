package stdgo._internal.encoding.gob;
function _compileEnc(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine> {
        var _srt = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
        var _seen = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp>>);
        var _rt = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_ut._externalEnc != ((0 : stdgo.GoInt))) {
            _rt = _ut._user;
        };
        if (((_ut._externalEnc == (0 : stdgo.GoInt)) && (_srt.kind() == (25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            {
                var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _wireFieldNum = __1, _fieldNum = __0;
                while ((_fieldNum < _srt.numField() : Bool)) {
                    var _f = (_srt.field(_fieldNum).__copy__() : stdgo._internal.reflect.Reflect_StructField.StructField);
if (!stdgo._internal.encoding.gob.Gob__isSent._isSent((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_StructField.StructField>))) {
                        {
                            _fieldNum++;
                            continue;
                        };
                    };
var __tmp__ = stdgo._internal.encoding.gob.Gob__encOpFor._encOpFor(_f.type, _seen, _building), _op:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp> = __tmp__._0, _indir:stdgo.GoInt = __tmp__._1;
_engine._instr = (_engine._instr.__append__((new stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr((_op : stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp), _wireFieldNum, _f.index, _indir) : stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr)));
_wireFieldNum++;
                    _fieldNum++;
                };
            };
            if (((_srt.numField() > (0 : stdgo.GoInt) : Bool) && (_engine._instr.length == (0 : stdgo.GoInt)) : Bool)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("type %s has no exported fields" : stdgo.GoString), stdgo.Go.toInterface(_rt));
            };
            _engine._instr = (_engine._instr.__append__((new stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encStructTerminator._encStructTerminator, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr)));
        } else {
            _engine._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>);
            var __tmp__ = stdgo._internal.encoding.gob.Gob__encOpFor._encOpFor(_rt, _seen, _building), _op:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp> = __tmp__._0, _indir:stdgo.GoInt = __tmp__._1;
            _engine._instr[(0 : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr((_op : stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _indir) : stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr);
        };
        return _engine;
    }
