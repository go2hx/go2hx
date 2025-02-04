package stdgo._internal.encoding.gob;
function _compileEnc(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine> {
        var _srt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        var _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>);
        var _seen = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>>);
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            _rt = (@:checkr _ut ?? throw "null pointer dereference")._user;
        };
        if ((((@:checkr _ut ?? throw "null pointer dereference")._externalEnc == (0 : stdgo.GoInt)) && (_srt.kind() == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            {
                var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _wireFieldNum = __1, _fieldNum = __0;
                while ((_fieldNum < _srt.numField() : Bool)) {
                    var _f = (_srt.field(_fieldNum).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
if (!stdgo._internal.encoding.gob.Gob__issent._isSent((stdgo.Go.setRef(_f) : stdgo.Ref<stdgo._internal.reflect.Reflect_structfield.StructField>))) {
                        {
                            _fieldNum++;
                            continue;
                        };
                    };
var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_f.type, _seen, _building), _op:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _indir:stdgo.GoInt = __tmp__._1;
(@:checkr _engine ?? throw "null pointer dereference")._instr = ((@:checkr _engine ?? throw "null pointer dereference")._instr.__append__((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(_op.value, _wireFieldNum, _f.index, _indir) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)));
_wireFieldNum++;
                    _fieldNum++;
                };
            };
            if (((_srt.numField() > (0 : stdgo.GoInt) : Bool) && ((@:checkr _engine ?? throw "null pointer dereference")._instr.length == (0 : stdgo.GoInt)) : Bool)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("type %s has no exported fields" : stdgo.GoString), stdgo.Go.toInterface(_rt));
            };
            (@:checkr _engine ?? throw "null pointer dereference")._instr = ((@:checkr _engine ?? throw "null pointer dereference")._instr.__append__((new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(stdgo._internal.encoding.gob.Gob__encstructterminator._encStructTerminator, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)));
        } else {
            (@:checkr _engine ?? throw "null pointer dereference")._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_rt, _seen, _building), _op:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _indir:stdgo.GoInt = __tmp__._1;
            (@:checkr _engine ?? throw "null pointer dereference")._instr[(0 : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr(_op.value, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _indir) : stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr);
        };
        return _engine;
    }
