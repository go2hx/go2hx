package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    @:tdfield
    static public function _print( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _x:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L144"
        if (!stdgo._internal.go.ast.Ast_notnilfilter.notNilFilter((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _x?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L145"
            _p._printf(("nil" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L146"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L149"
        {
            final __value__ = _x.kind();
            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L151"
                _p._print(_x.elem()?.__copy__());
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L154"
                _p._printf(("%s (len = %d) {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()), stdgo.Go.toInterface(_x.len()));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L155"
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L156"
                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L157"
                    _p._printf(("\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L158"
                    for (__24 => _key in _x.mapKeys()) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L159"
                        _p._print(_key?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L160"
                        _p._printf((": " : stdgo.GoString));
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L161"
                        _p._print(_x.mapIndex(_key?.__copy__())?.__copy__());
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L162"
                        _p._printf(("\n" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L164"
                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L166"
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L169"
                _p._printf(("*" : stdgo.GoString));
                var _ptr = (_x.interface_() : stdgo.AnyInterface);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L174"
                {
                    var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._ptrmap != null && (@:checkr _p ?? throw "null pointer dereference")._ptrmap.__exists__(_ptr) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._ptrmap[_ptr], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _line:stdgo.GoInt = __tmp__._0, _exists:Bool = __tmp__._1;
                    if (_exists) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L175"
                        _p._printf(("(obj @ %d)" : stdgo.GoString), stdgo.Go.toInterface(_line));
                    } else {
                        (@:checkr _p ?? throw "null pointer dereference")._ptrmap[_ptr] = (@:checkr _p ?? throw "null pointer dereference")._line;
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L178"
                        _p._print(_x.elem()?.__copy__());
                    };
                };
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L182"
                _p._printf(("%s {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L183"
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L184"
                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L185"
                    _p._printf(("\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L186"
                    {
                        var __0 = (0 : stdgo.GoInt), __1 = (_x.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                        while ((_i < _n : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L187"
                            _p._printf(("%d: " : stdgo.GoString), stdgo.Go.toInterface(_i));
//"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L188"
                            _p._print(_x.index(_i).__copy__());
//"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L189"
                            _p._printf(("\n" : stdgo.GoString));
                            _i++;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L191"
                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L193"
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L196"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_x.interface_() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
                    }, _s = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L197"
                        _p._printf(("%#q" : stdgo.GoString), stdgo.Go.toInterface(_s));
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L198"
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L200"
                _p._printf(("%s (len = %d) {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()), stdgo.Go.toInterface(_x.len()));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L201"
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L202"
                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L203"
                    _p._printf(("\n" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L204"
                    {
                        var __0 = (0 : stdgo.GoInt), __1 = (_x.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                        while ((_i < _n : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L205"
                            _p._printf(("%d: " : stdgo.GoString), stdgo.Go.toInterface(_i));
//"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L206"
                            _p._print(_x.index(_i).__copy__());
//"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L207"
                            _p._printf(("\n" : stdgo.GoString));
                            _i++;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L209"
                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L211"
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = (_x.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L215"
                _p._printf(("%s {" : stdgo.GoString), stdgo.Go.toInterface(_t));
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L216"
                (@:checkr _p ?? throw "null pointer dereference")._indent++;
                var _first = (true : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L218"
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_t.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
                    while ((_i < _n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L221"
                        {
                            var _name = (_t.field(_i).name.__copy__() : stdgo.GoString);
                            if (stdgo._internal.go.ast.Ast_isexported.isExported(_name.__copy__())) {
                                var _value = (_x.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L223"
                                if ((((@:checkr _p ?? throw "null pointer dereference")._filter == null) || (@:checkr _p ?? throw "null pointer dereference")._filter(_name.__copy__(), _value.__copy__()) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L224"
                                    if (_first) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L225"
                                        _p._printf(("\n" : stdgo.GoString));
                                        _first = false;
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L228"
                                    _p._printf(("%s: " : stdgo.GoString), stdgo.Go.toInterface(_name));
                                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L229"
                                    _p._print(_value.__copy__());
                                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L230"
                                    _p._printf(("\n" : stdgo.GoString));
                                };
                            };
                        };
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L234"
                (@:checkr _p ?? throw "null pointer dereference")._indent--;
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L235"
                _p._printf(("}" : stdgo.GoString));
            } else {
                var _v = (_x.interface_() : stdgo.AnyInterface);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L239"
                {
                    final __type__ = _v;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L242"
                        _p._printf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_v));
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L243"
                        return;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token_pos.Pos))) {
                        var _v:stdgo._internal.go.token.Token_pos.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__().value);
                        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L246"
                        if (({
                            final value = (@:checkr _p ?? throw "null pointer dereference")._fset;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L247"
                            _p._printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._fset.position(_v))));
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L248"
                            return;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L252"
                _p._printf(("%v" : stdgo.GoString), _v);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _printf( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L129"
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_p), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L130"
                throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.go.ast.Ast_t_localerror.T_localError(_err) : stdgo._internal.go.ast.Ast_t_localerror.T_localError)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L91"
        for (_i => _b in _data) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L93"
            if (_b == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_n, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                _n = (_n + (_m) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L96"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L97"
                    return { _0 : _n, _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L99"
                (@:checkr _p ?? throw "null pointer dereference")._line++;
            } else if ((@:checkr _p ?? throw "null pointer dereference")._last == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _p ?? throw "null pointer dereference")._output, ("%6d  " : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._line));
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L102"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L103"
                    return { _0 : _n, _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L105"
                {
                    var _j = ((@:checkr _p ?? throw "null pointer dereference")._indent : stdgo.GoInt);
                    while ((_j > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write(stdgo._internal.go.ast.Ast__indent._indent);
                            _err = @:tmpset0 __tmp__._1;
                        };
//"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L107"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L108"
                            return { _0 : _n, _1 : _err };
                        };
                        _j--;
                    };
                };
            };
            (@:checkr _p ?? throw "null pointer dereference")._last = _b;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L114"
        if (((_data.length) > _n : Bool)) {
            {
                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _m = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_m) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print.go#L118"
        return { _0 : _n, _1 : _err };
    }
}
