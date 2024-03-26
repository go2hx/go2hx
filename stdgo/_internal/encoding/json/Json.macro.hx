package stdgo._internal.encoding.json;
macro function _appendString<Bytes>(__generic__0:haxe.macro.Expr.ExprOf<Bytes>, _dst:haxe.macro.Expr.ExprOf<stdgo.Slice<stdgo.GoByte>>, _src:haxe.macro.Expr.ExprOf<Bytes>, _escapeHTML:haxe.macro.Expr.ExprOf<Bool>):haxe.macro.Expr.ExprOf<stdgo.Slice<stdgo.GoByte>> {
        final Bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "encoding.json" + "_" + "_appendString" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(Bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$Bytes, _dst:stdgo.Slice<stdgo.GoByte>, _src:$Bytes, _escapeHTML:Bool) {
                    _dst = (_dst.__append__((34 : stdgo.GoUInt8)));
                    var _start:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        while ((_i < (_src.length) : Bool)) {
                            {
                                var _b:stdgo.GoUInt8 = _src[@:param_index _i];
                                if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                                    if ((@:privateAccess stdgo._internal.encoding.json.Json._htmlSafeSet[(_b : stdgo.GoInt)] || ((!_escapeHTML && @:privateAccess stdgo._internal.encoding.json.Json._safeSet[(_b : stdgo.GoInt)] : Bool)) : Bool)) {
                                        _i++;
                                        continue;
                                    };
                                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : $Bytes) : stdgo._internal.encoding.json.Json.Array<stdgo.GoUInt8>)));
                                    {
                                        final __value__ = _b;
                                        if (__value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.GoUInt8), _b));
                                        } else if (__value__ == ((10 : stdgo.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.GoUInt8), (110 : stdgo.GoUInt8)));
                                        } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.GoUInt8), (114 : stdgo.GoUInt8)));
                                        } else if (__value__ == ((9 : stdgo.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.GoUInt8), (116 : stdgo.GoUInt8)));
                                        } else {
                                            _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), @:privateAccess stdgo._internal.encoding.json.Json._hex[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], @:privateAccess stdgo._internal.encoding.json.Json._hex[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                                        };
                                    };
                                    _i++;
                                    _start = _i;
                                    continue;
                                };
                            };
                            var _n:stdgo.GoInt = ((_src.length) - _i : stdgo.GoInt);
                            if ((_n > (4 : stdgo.GoInt) : Bool)) {
                                _n = (4 : stdgo.GoInt);
                            };
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(((_src.__slice__(_i, (_i + _n : stdgo.GoInt)) : $Bytes) : stdgo.GoString).__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                            if (((_c == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                                _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : $Bytes) : stdgo._internal.encoding.json.Json.Array<stdgo.GoUInt8>)));
                                _dst = (_dst.__append__(...(("\\ufffd" : stdgo.GoString) : stdgo._internal.encoding.json.Json.Array<stdgo.GoUInt8>)));
                                _i = (_i + (_size) : stdgo.GoInt);
                                _start = _i;
                                continue;
                            };
                            if (((_c == (8232 : stdgo.GoInt32)) || (_c == (8233 : stdgo.GoInt32)) : Bool)) {
                                _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : $Bytes) : stdgo._internal.encoding.json.Json.Array<stdgo.GoUInt8>)));
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), @:privateAccess stdgo._internal.encoding.json.Json._hex[((_c & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]));
                                _i = (_i + (_size) : stdgo.GoInt);
                                _start = _i;
                                continue;
                            };
                            _i = (_i + (_size) : stdgo.GoInt);
                        };
                    };
                    _dst = (_dst.__append__(...((_src.__slice__(_start) : $Bytes) : stdgo._internal.encoding.json.Json.Array<stdgo.GoUInt8>)));
                    _dst = (_dst.__append__((34 : stdgo.GoUInt8)));
                    return _dst;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_dst, $_src, $_escapeHTML));
        };
    }
