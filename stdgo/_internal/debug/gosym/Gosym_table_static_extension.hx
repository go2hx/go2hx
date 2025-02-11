package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Table_asInterface) class Table_static_extension {
    @:keep
    @:tdfield
    static public function symByAddr( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>, _addr:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table> = _t;
        for (_i => _ in (@:checkr _t ?? throw "null pointer dereference").syms) {
            var _s = (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").syms[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
            {
                final __value__ = (@:checkr _s ?? throw "null pointer dereference").type;
                if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((68 : stdgo.GoUInt8)) || __value__ == ((100 : stdgo.GoUInt8)) || __value__ == ((66 : stdgo.GoUInt8)) || __value__ == ((98 : stdgo.GoUInt8))) {
                    if ((@:checkr _s ?? throw "null pointer dereference").value == (_addr)) {
                        return _s;
                    };
                };
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function lookupFunc( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table> = _t;
        for (_i => _ in (@:checkr _t ?? throw "null pointer dereference").funcs) {
            var _f = (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").funcs[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
            if ((@:checkr (@:checkr _f ?? throw "null pointer dereference").sym ?? throw "null pointer dereference").name == (_name)) {
                return _f;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function lookupSym( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table> = _t;
        for (_i => _ in (@:checkr _t ?? throw "null pointer dereference").syms) {
            var _s = (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").syms[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
            {
                final __value__ = (@:checkr _s ?? throw "null pointer dereference").type;
                if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((68 : stdgo.GoUInt8)) || __value__ == ((100 : stdgo.GoUInt8)) || __value__ == ((66 : stdgo.GoUInt8)) || __value__ == ((98 : stdgo.GoUInt8))) {
                    if ((@:checkr _s ?? throw "null pointer dereference").name == (_name)) {
                        return _s;
                    };
                };
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function lineToPC( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>, _file:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; var _2 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table> = _t;
        var _pc = (0 : stdgo.GoUInt64), _fn = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>), _err = (null : stdgo.Error);
        var __tmp__ = ((@:checkr _t ?? throw "null pointer dereference").files != null && (@:checkr _t ?? throw "null pointer dereference").files.__exists__(_file?.__copy__()) ? { _0 : (@:checkr _t ?? throw "null pointer dereference").files[_file?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>), _1 : false }), _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : null, _2 : stdgo.Go.asInterface((_file : stdgo._internal.debug.gosym.Gosym_unknownfileerror.UnknownFileError)) };
                _pc = __tmp__._0;
                _fn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (((@:checkr _t ?? throw "null pointer dereference")._go12line != null && (((@:checkr _t ?? throw "null pointer dereference")._go12line : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._go12line : Dynamic).__nil__))) {
            var _pc = (@:check2r (@:checkr _t ?? throw "null pointer dereference")._go12line._go12LineToPC(_file?.__copy__(), _line) : stdgo.GoUInt64);
            if (_pc == ((0i64 : stdgo.GoUInt64))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : null, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError(_file?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError>)) };
                    _pc = __tmp__._0;
                    _fn = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; var _2 : stdgo.Error; } = { _0 : _pc, _1 : @:check2r _t.pCToFunc(_pc), _2 : (null : stdgo.Error) };
                _pc = __tmp__._0;
                _fn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = @:check2r _obj._alineFromLine(_file?.__copy__(), _line), _abs:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _pc, _1 : _fn, _2 : _err };
        };
        for (_i => _ in (@:checkr _obj ?? throw "null pointer dereference").funcs) {
            var _f = (stdgo.Go.setRef((@:checkr _obj ?? throw "null pointer dereference").funcs[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
            var _pc = (@:check2r (@:checkr _f ?? throw "null pointer dereference").lineTable.lineToPC(_abs, (@:checkr _f ?? throw "null pointer dereference").end) : stdgo.GoUInt64);
            if (_pc != ((0i64 : stdgo.GoUInt64))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; var _2 : stdgo.Error; } = { _0 : _pc, _1 : _f, _2 : (null : stdgo.Error) };
                    _pc = __tmp__._0;
                    _fn = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : null, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError(_file?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError>)) };
            _pc = __tmp__._0;
            _fn = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function pCToLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>, _pc:stdgo.GoUInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table> = _t;
        var _file = ("" : stdgo.GoString), _line = (0 : stdgo.GoInt), _fn = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
        {
            _fn = @:check2r _t.pCToFunc(_pc);
            if ((_fn == null || (_fn : Dynamic).__nil__)) {
                return { _0 : _file, _1 : _line, _2 : _fn };
            };
        };
        if (((@:checkr _t ?? throw "null pointer dereference")._go12line != null && (((@:checkr _t ?? throw "null pointer dereference")._go12line : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._go12line : Dynamic).__nil__))) {
            _file = @:check2r (@:checkr _t ?? throw "null pointer dereference")._go12line._go12PCToFile(_pc)?.__copy__();
            _line = @:check2r (@:checkr _t ?? throw "null pointer dereference")._go12line._go12PCToLine(_pc);
        } else {
            {
                var __tmp__ = @:check2r (@:checkr _fn ?? throw "null pointer dereference").obj._lineFromAline(@:check2r (@:checkr _fn ?? throw "null pointer dereference").lineTable.pCToLine(_pc));
                _file = @:tmpset0 __tmp__._0?.__copy__();
                _line = @:tmpset0 __tmp__._1;
            };
        };
        return { _0 : _file, _1 : _line, _2 : _fn };
    }
    @:keep
    @:tdfield
    static public function pCToFunc( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>, _pc:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table> = _t;
        var _funcs = (@:checkr _t ?? throw "null pointer dereference").funcs;
        while (((_funcs.length) > (0 : stdgo.GoInt) : Bool)) {
            var _m = ((_funcs.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            var _fn = (stdgo.Go.setRef(_funcs[(_m : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
            if ((_pc < (@:checkr _fn ?? throw "null pointer dereference").entry : Bool)) {
                _funcs = (_funcs.__slice__((0 : stdgo.GoInt), _m) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
            } else if ((((@:checkr _fn ?? throw "null pointer dereference").entry <= _pc : Bool) && (_pc < (@:checkr _fn ?? throw "null pointer dereference").end : Bool) : Bool)) {
                return _fn;
            } else {
                _funcs = (_funcs.__slice__((_m + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
            };
        };
        return null;
    }
}
