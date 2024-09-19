package stdgo._internal.debug.gosym;
function newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _pcln:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):{ var _0 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err = (stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_T_sym.T_sym):stdgo.Error {
                _n++;
                return (null : stdgo.Error);
            }) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var _t:stdgo._internal.debug.gosym.Gosym_Table.Table = ({} : stdgo._internal.debug.gosym.Gosym_Table.Table);
            if (_pcln._isGo12()) {
                _t._go12line = _pcln;
            };
            var _fname = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
            _t.syms = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Sym.Sym)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
            var _nf = (0 : stdgo.GoInt);
            var _nz = (0 : stdgo.GoInt);
            var _lasttyp = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            _err = stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_T_sym.T_sym):stdgo.Error {
                var _n = (_t.syms.length : stdgo.GoInt);
                _t.syms = (_t.syms.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                var _ts = (stdgo.Go.setRef(_t.syms[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                _ts.type = _s._typ;
                _ts.value = _s._value;
                _ts.goType = _s._gotype;
                _ts._goVersion = _pcln._version;
                {
                    final __value__ = _s._typ;
                    if (__value__ == ((122 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8))) {
                        if (((_lasttyp != (122 : stdgo.GoUInt8)) && (_lasttyp != (90 : stdgo.GoUInt8)) : Bool)) {
                            _nz++;
                        };
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_s._name.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                                var _eltIdx = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint16((_s._name.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
                                var __tmp__ = (_fname != null && _fname.exists(_eltIdx) ? { _0 : _fname[_eltIdx], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _elt:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError((-1 : stdgo.GoInt), ("bad filename code" : stdgo.GoString), stdgo.Go.toInterface(_eltIdx)) : stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_DecodingError.DecodingError>));
                                };
                                {
                                    var _n = (_ts.name.length : stdgo.GoInt);
                                    if (((_n > (0 : stdgo.GoInt) : Bool) && (_ts.name[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                                        _ts.name = (_ts.name + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                                    };
                                };
                                _ts.name = (_ts.name + (_elt)?.__copy__() : stdgo.GoString);
                            });
                        };
                    } else {
                        var _w = (0 : stdgo.GoInt);
                        var _b = _s._name;
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_b.length) : Bool), _i++, {
                                if (((_b[(_i : stdgo.GoInt)] == ((194 : stdgo.GoUInt8)) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_b.length) : Bool) : Bool) && (_b[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (183 : stdgo.GoUInt8)) : Bool)) {
                                    _i++;
                                    _b[(_i : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
                                };
                                _b[(_w : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
                                _w++;
                            });
                        };
                        _ts.name = ((_s._name.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    };
                };
                {
                    final __value__ = _s._typ;
                    if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8))) {
                        _nf++;
                    } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                        _fname[(_s._value : stdgo.GoUInt16)] = _ts.name?.__copy__();
                    };
                };
                _lasttyp = _s._typ;
                return (null : stdgo.Error);
            });
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            _t.funcs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>((0 : stdgo.GoInt).toBasic(), _nf, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nf ? (0 : stdgo.GoInt).toBasic() : _nf : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Func.Func)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            _t.files = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>);
            var _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
            if (_t._go12line != null && ((_t._go12line : Dynamic).__nil__ == null || !(_t._go12line : Dynamic).__nil__)) {
                _t.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                _obj = (stdgo.Go.setRef(_t.objs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                _t._go12line._go12MapFiles(_t.files, _obj);
            } else {
                _t.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>((0 : stdgo.GoInt).toBasic(), _nz, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nz ? (0 : stdgo.GoInt).toBasic() : _nz : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
            };
            var _lastf = (0 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_t.syms.length) : Bool), _i++, {
                    var _sym = (stdgo.Go.setRef(_t.syms[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _sym.type;
                                if (__value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                                    if (_t._go12line != null && ((_t._go12line : Dynamic).__nil__ == null || !(_t._go12line : Dynamic).__nil__)) {
                                        break;
                                    };
                                    if (_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__)) {
                                        _obj.funcs = (_t.funcs.__slice__(_lastf) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                                    };
                                    _lastf = (_t.funcs.length);
                                    var _n = (_t.objs.length : stdgo.GoInt);
                                    _t.objs = (_t.objs.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                                    _obj = (stdgo.Go.setRef(_t.objs[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                                    var _end:stdgo.GoInt = (0 : stdgo.GoInt);
                                    {
                                        _end = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                        stdgo.Go.cfor((_end < (_t.syms.length) : Bool), _end++, {
                                            {
                                                var _c = (_t.syms[(_end : stdgo.GoInt)].type : stdgo.GoUInt8);
                                                if (((_c != (90 : stdgo.GoUInt8)) && (_c != (122 : stdgo.GoUInt8)) : Bool)) {
                                                    break;
                                                };
                                            };
                                        });
                                    };
                                    _obj.paths = (_t.syms.__slice__(_i, _end) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                                    _i = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
                                    var _depth = (0 : stdgo.GoInt);
                                    for (_j => _ in _obj.paths) {
                                        var _s = (stdgo.Go.setRef(_obj.paths[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                                        if (_s.name == (stdgo.Go.str())) {
                                            _depth--;
                                        } else {
                                            if (_depth == ((0 : stdgo.GoInt))) {
                                                _t.files[_s.name] = _obj;
                                            };
                                            _depth++;
                                        };
                                    };
                                    break;
                                } else if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8))) {
                                    {
                                        var _n = (_t.funcs.length : stdgo.GoInt);
                                        if ((_n > (0 : stdgo.GoInt) : Bool)) {
                                            _t.funcs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end = _sym.value;
                                        };
                                    };
                                    if (((_sym.name == ("runtime.etext" : stdgo.GoString)) || (_sym.name == ("etext" : stdgo.GoString)) : Bool)) {
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _na = __1, _np = __0;
                                    var _end:stdgo.GoInt = (0 : stdgo.GoInt);
                                    @:label("countloop") {
                                        _end = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                        stdgo.Go.cfor((_end < (_t.syms.length) : Bool), _end++, {
                                            {
                                                var __switchIndex__ = -1;
                                                var __run__ = true;
                                                while (__run__) {
                                                    __run__ = false;
                                                    {
                                                        final __value__ = _t.syms[(_end : stdgo.GoInt)].type;
                                                        if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                                                            @:jump("countloop") break;
                                                            break;
                                                        } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                                                            _np++;
                                                            break;
                                                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                                                            _na++;
                                                            break;
                                                        };
                                                    };
                                                    break;
                                                };
                                            };
                                        });
                                    };
                                    var _n = (_t.funcs.length : stdgo.GoInt);
                                    _t.funcs = (_t.funcs.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                                    var _fn = (stdgo.Go.setRef(_t.funcs[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                                    _sym.func = _fn;
                                    _fn.params = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>((0 : stdgo.GoInt).toBasic(), _np) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                                    _fn.locals = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>((0 : stdgo.GoInt).toBasic(), _na) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                                    _fn.sym = _sym;
                                    _fn.entry = _sym.value;
                                    _fn.obj = _obj;
                                    if (_t._go12line != null && ((_t._go12line : Dynamic).__nil__ == null || !(_t._go12line : Dynamic).__nil__)) {
                                        _fn.lineTable = _t._go12line;
                                    } else if (_pcln != null && ((_pcln : Dynamic).__nil__ == null || !(_pcln : Dynamic).__nil__)) {
                                        _fn.lineTable = _pcln._slice(_fn.entry);
                                        _pcln = _fn.lineTable;
                                    };
                                    {
                                        var _j = (_i : stdgo.GoInt);
                                        stdgo.Go.cfor((_j < _end : Bool), _j++, {
                                            var _s = (stdgo.Go.setRef(_t.syms[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                                            {
                                                final __value__ = _s.type;
                                                if (__value__ == ((109 : stdgo.GoUInt8))) {
                                                    _fn.frameSize = (_s.value : stdgo.GoInt);
                                                } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                                                    var _n = (_fn.params.length : stdgo.GoInt);
                                                    _fn.params = (_fn.params.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                                                    _fn.params[(_n : stdgo.GoInt)] = _s;
                                                } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                                                    var _n = (_fn.locals.length : stdgo.GoInt);
                                                    _fn.locals = (_fn.locals.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                                                    _fn.locals[(_n : stdgo.GoInt)] = _s;
                                                };
                                            };
                                        });
                                    };
                                    _i = (_end - (1 : stdgo.GoInt) : stdgo.GoInt);
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) continue;
                    };
                });
            };
            if ((((_t._go12line != null) && ((_t._go12line : Dynamic).__nil__ == null || !(_t._go12line : Dynamic).__nil__)) && (_nf == (0 : stdgo.GoInt)) : Bool)) {
                _t.funcs = _t._go12line._go12Funcs();
            };
            if (_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__)) {
                _obj.funcs = (_t.funcs.__slice__(_lastf) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            };
            return { _0 : (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>), _1 : (null : stdgo.Error) };
        });
    }
