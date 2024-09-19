package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Obj_asInterface) class Obj_static_extension {
    @:keep
    static public function _alineFromLine( _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>, _path:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = _o;
        stdgo._internal.internal.Macro.controlFlow({
            if ((_line < (1 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError(_path?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError>)) };
            };
            for (_i => _s in _o.paths) {
                if (_s.name != (_path)) {
                    continue;
                };
                var _depth = (0 : stdgo.GoInt);
                var _incstart:stdgo.GoInt = (0 : stdgo.GoInt);
                _line = (_line + ((_s.value : stdgo.GoInt)) : stdgo.GoInt);
                @:label("pathloop") for (__0 => _s in (_o.paths.__slice__(_i) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>)) {
                    var _val = (_s.value : stdgo.GoInt);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            if (((_depth == (1 : stdgo.GoInt)) && (_val >= _line : Bool) : Bool)) {
                                return { _0 : (_line - (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
                                break;
                            } else if (_s.name == (stdgo.Go.str())) {
                                _depth--;
                                if (_depth == ((0 : stdgo.GoInt))) {
                                    @:jump("pathloop") break;
                                } else if (_depth == ((1 : stdgo.GoInt))) {
                                    _line = (_line + ((_val - _incstart : stdgo.GoInt)) : stdgo.GoInt);
                                };
                                break;
                            } else {
                                if (_depth == ((1 : stdgo.GoInt))) {
                                    _incstart = _val;
                                };
                                _depth++;
                            };
                            break;
                        };
                    };
                };
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError(_path?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError>)) };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((_path : stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError)) };
        });
    }
    @:keep
    static public function _lineFromAline( _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>, _aline:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = _o;
        stdgo._internal.internal.Macro.controlFlow({
            {};
            var _noPath = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022(stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), null) : stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022>);
            var _tos = _noPath;
            @:label("pathloop") for (__0 => _s in _o.paths) {
                var _val = (_s.value : stdgo.GoInt);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if ((_val > _aline : Bool)) {
                            @:jump("pathloop") break;
                            break;
                        } else if (_val == ((1 : stdgo.GoInt))) {
                            _tos = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022(_s.name?.__copy__(), _val, (0 : stdgo.GoInt), _noPath) : stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022>);
                            break;
                        } else if (_s.name == (stdgo.Go.str())) {
                            if (_tos == (_noPath)) {
                                return { _0 : ("<malformed symbol table>" : stdgo.GoString), _1 : (0 : stdgo.GoInt) };
                            };
                            _tos._prev._offset = (_tos._prev._offset + ((_val - _tos._start : stdgo.GoInt)) : stdgo.GoInt);
                            _tos = _tos._prev;
                            break;
                        } else {
                            _tos = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022(_s.name?.__copy__(), _val, (0 : stdgo.GoInt), _tos) : stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022>);
                        };
                        break;
                    };
                };
            };
            if (_tos == (_noPath)) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt) };
            };
            return { _0 : _tos._path?.__copy__(), _1 : (((_aline - _tos._start : stdgo.GoInt) - _tos._offset : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
        });
    }
}
