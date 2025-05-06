package stdgo._internal.go.types;
function _firstInSrc(_path:stdgo.Slice<stdgo._internal.go.types.Types_object.Object>):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_path[(0 : stdgo.GoInt)].pos() : stdgo._internal.go.token.Token_pos.Pos);
var _pos = __1, _fst = __0;
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L357"
        for (_i => _t in (_path.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L358"
            if ((stdgo._internal.go.types.Types__cmppos._cmpPos(_t.pos(), _pos) < (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = _t.pos();
                    _fst = @:binopAssign __tmp__0;
                    _pos = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/decl.go#L362"
        return _fst;
    }
