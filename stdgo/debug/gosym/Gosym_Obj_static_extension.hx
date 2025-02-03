package stdgo.debug.gosym;
class Obj_static_extension {
    static public function _alineFromLine(_o:Obj, _path:String, _line:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _o = (_o : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        final _path = (_path : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Obj_static_extension.Obj_static_extension._alineFromLine(_o, _path, _line);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _lineFromAline(_o:Obj, _aline:StdTypes.Int):stdgo.Tuple<String, StdTypes.Int> {
        final _o = (_o : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        final _aline = (_aline : stdgo.GoInt);
        return {
            final obj = stdgo._internal.debug.gosym.Gosym_Obj_static_extension.Obj_static_extension._lineFromAline(_o, _aline);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
