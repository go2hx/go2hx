package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Table_asInterface) class Table_static_extension {
    @:keep
    static public function symByAddr( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>, _addr:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table> = _t;
        for (_i => _ in _t.syms) {
            var _s = (stdgo.Go.setRef(_t.syms[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
            {
                final __value__ = _s.type;
                if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((68 : stdgo.GoUInt8)) || __value__ == ((100 : stdgo.GoUInt8)) || __value__ == ((66 : stdgo.GoUInt8)) || __value__ == ((98 : stdgo.GoUInt8))) {
                    if (_s.value == (_addr)) {
                        return _s;
                    };
                };
            };
        };
        return null;
    }
    @:keep
    static public function lookupFunc( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table> = _t;
        for (_i => _ in _t.funcs) {
            var _f = (stdgo.Go.setRef(_t.funcs[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            if (_f.sym.name == (_name)) {
                return _f;
            };
        };
        return null;
    }
    @:keep
    static public function lookupSym( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table> = _t;
        for (_i => _ in _t.syms) {
            var _s = (stdgo.Go.setRef(_t.syms[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
            {
                final __value__ = _s.type;
                if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((68 : stdgo.GoUInt8)) || __value__ == ((100 : stdgo.GoUInt8)) || __value__ == ((66 : stdgo.GoUInt8)) || __value__ == ((98 : stdgo.GoUInt8))) {
                    if (_s.name == (_name)) {
                        return _s;
                    };
                };
            };
        };
        return null;
    }
    @:keep
    static public function lineToPC( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>, _file:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>; var _2 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table> = _t;
        var _pc = (0 : stdgo.GoUInt64), _fn = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>), _err = (null : stdgo.Error);
        var __tmp__ = (_t.files != null && _t.files.exists(_file?.__copy__()) ? { _0 : _t.files[_file?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>), _1 : false }), _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : null, _2 : stdgo.Go.asInterface((_file : stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError)) };
        };
        if ((_t._go12line != null && ((_t._go12line : Dynamic).__nil__ == null || !(_t._go12line : Dynamic).__nil__))) {
            var _pc = (_t._go12line._go12LineToPC(_file?.__copy__(), _line) : stdgo.GoUInt64);
            if (_pc == ((0i64 : stdgo.GoUInt64))) {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : null, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError(_file?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError>)) };
            };
            return { _0 : _pc, _1 : _t.pctoFunc(_pc), _2 : (null : stdgo.Error) };
        };
        var __tmp__ = _obj._alineFromLine(_file?.__copy__(), _line), _abs:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _pc, _1 : _fn, _2 : _err };
        };
        for (_i => _ in _obj.funcs) {
            var _f = (stdgo.Go.setRef(_obj.funcs[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            var _pc = (_f.lineTable.lineToPC(_abs, _f.end) : stdgo.GoUInt64);
            if (_pc != ((0i64 : stdgo.GoUInt64))) {
                return { _0 : _pc, _1 : _f, _2 : (null : stdgo.Error) };
            };
        };
        return { _0 : (0i64 : stdgo.GoUInt64), _1 : null, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError(_file?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError>)) };
    }
    @:keep
    static public function pctoLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>, _pc:stdgo.GoUInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table> = _t;
        var _file = ("" : stdgo.GoString), _line = (0 : stdgo.GoInt), _fn = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
        {
            _fn = _t.pctoFunc(_pc);
            if ((_fn == null || (_fn : Dynamic).__nil__)) {
                return { _0 : _file, _1 : _line, _2 : _fn };
            };
        };
        if ((_t._go12line != null && ((_t._go12line : Dynamic).__nil__ == null || !(_t._go12line : Dynamic).__nil__))) {
            _file = _t._go12line._go12PCToFile(_pc)?.__copy__();
            _line = _t._go12line._go12PCToLine(_pc);
        } else {
            {
                var __tmp__ = _fn.obj._lineFromAline(_fn.lineTable.pctoLine(_pc));
                _file = __tmp__._0?.__copy__();
                _line = __tmp__._1;
            };
        };
        return { _0 : _file, _1 : _line, _2 : _fn };
    }
    @:keep
    static public function pctoFunc( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>, _pc:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table> = _t;
        var _funcs = _t.funcs;
        while (((_funcs.length) > (0 : stdgo.GoInt) : Bool)) {
            var _m = ((_funcs.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            var _fn = (stdgo.Go.setRef(_funcs[(_m : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            if ((_pc < _fn.entry : Bool)) {
                _funcs = (_funcs.__slice__((0 : stdgo.GoInt), _m) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            } else if (((_fn.entry <= _pc : Bool) && (_pc < _fn.end : Bool) : Bool)) {
                return _fn;
            } else {
                _funcs = (_funcs.__slice__((_m + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
            };
        };
        return null;
    }
}
