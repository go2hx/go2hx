package stdgo.encoding.json;
macro function _appendString<Bytes>(__generic__0:haxe.macro.Expr.ExprOf<Bytes>, _dst:haxe.macro.Expr.ExprOf<stdgo.Slice<stdgo.StdGoTypes.GoByte>>, _src:haxe.macro.Expr.ExprOf<Bytes>, _escapeHTML:haxe.macro.Expr.ExprOf<Bool>):haxe.macro.Expr.ExprOf<stdgo.Slice<stdgo.StdGoTypes.GoByte>> {
        final Bytes:haxe.macro.Expr.ComplexType = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(__generic__0));
        {
            var id = "T_" + "encoding.json" + "_" + "_appendString" + "_" + "T_" + haxe.macro.ComplexTypeTools.toString(Bytes) + "_";
            id = StringTools.replace(id, ".", "_");
            id = StringTools.replace(id, "<", "_");
            id = StringTools.replace(id, ">", "_");
            try {
                haxe.macro.Context.getType(id);
            } catch(_) {
                final f = macro function f(__generic__0:$Bytes, _dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _src:$Bytes, _escapeHTML:Bool) {
                    _dst = (_dst.__append__((34 : stdgo.StdGoTypes.GoUInt8)));
                    var _start:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        while (_i < (_src.length)) {
                            {
                                var _b:stdgo.StdGoTypes.GoUInt8 = _src[@:param_index _i];
                                if (_b < (128 : stdgo.StdGoTypes.GoUInt8)) {
                                    if (@:privateAccess stdgo.encoding.json.Json._htmlSafeSet[(_b : stdgo.StdGoTypes.GoInt)] || (!_escapeHTML && @:privateAccess stdgo.encoding.json.Json._safeSet[(_b : stdgo.StdGoTypes.GoInt)])) {
                                        _i++;
                                        continue;
                                    };
                                    _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : $Bytes).__toArray__()));
                                    {
                                        final __value__ = _b;
                                        if (__value__ == ((92 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((34 : stdgo.StdGoTypes.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), _b));
                                        } else if (__value__ == ((10 : stdgo.StdGoTypes.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (110 : stdgo.StdGoTypes.GoUInt8)));
                                        } else if (__value__ == ((13 : stdgo.StdGoTypes.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (114 : stdgo.StdGoTypes.GoUInt8)));
                                        } else if (__value__ == ((9 : stdgo.StdGoTypes.GoUInt8))) {
                                            _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (116 : stdgo.StdGoTypes.GoUInt8)));
                                        } else {
                                            _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (117 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), @:privateAccess stdgo.encoding.json.Json._hex[(_b >> (4i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)], @:privateAccess stdgo.encoding.json.Json._hex[(_b & (15 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt)]));
                                        };
                                    };
                                    _i++;
                                    _start = _i;
                                    continue;
                                };
                            };
                            var _n:stdgo.StdGoTypes.GoInt = (_src.length) - _i;
                            if (_n > (4 : stdgo.StdGoTypes.GoInt)) {
                                _n = (4 : stdgo.StdGoTypes.GoInt);
                            };
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(((_src.__slice__(_i, _i + _n) : $Bytes) : stdgo.GoString).__copy__()), _c:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1;
                            if ((_c == (65533 : stdgo.StdGoTypes.GoInt32)) && (_size == (1 : stdgo.StdGoTypes.GoInt))) {
                                _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : $Bytes).__toArray__()));
                                _dst = (_dst.__append__(...("\\ufffd" : stdgo.GoString).__toArray__()));
                                _i = _i + (_size);
                                _start = _i;
                                continue;
                            };
                            if ((_c == (8232 : stdgo.StdGoTypes.GoInt32)) || (_c == (8233 : stdgo.StdGoTypes.GoInt32))) {
                                _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : $Bytes).__toArray__()));
                                _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (117 : stdgo.StdGoTypes.GoUInt8), (50 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), (50 : stdgo.StdGoTypes.GoUInt8), @:privateAccess stdgo.encoding.json.Json._hex[(_c & (15 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoInt)]));
                                _i = _i + (_size);
                                _start = _i;
                                continue;
                            };
                            _i = _i + (_size);
                        };
                    };
                    _dst = (_dst.__append__(...(_src.__slice__(_start) : $Bytes).__toArray__()));
                    _dst = (_dst.__append__((34 : stdgo.StdGoTypes.GoUInt8)));
                    return _dst;
                };
                switch f.expr {
                    case EFunction(_, f):
                        final td:haxe.macro.Expr.TypeDefinition = { name : id, pos : haxe.macro.Context.currentPos(), pack : [], kind : TDClass(), fields : [{ name : "f", pos : haxe.macro.Context.currentPos(), access : [AStatic, APublic], kind : FFun({ args : f.args, expr : f.expr }) }] };
haxe.macro.Context.defineType(td);
                    default:
                        throw info.panic() + "invalid expr: " + f.expr;
                };
            };
            return macro stdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_dst, $_src, $_escapeHTML));
        };
    }
