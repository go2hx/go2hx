package stdgo._internal.go.token;
function _verifyPositions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _lines:stdgo.Slice<stdgo.GoInt>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L68"
        {
            var _offs = (0 : stdgo.GoInt);
            while ((_offs < _f.size() : Bool)) {
                var _p = (_f.pos(_offs) : stdgo._internal.go.token.Token_pos.Pos);
var _offs2 = (_f.offset(_p) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L71"
                if (_offs2 != (_offs)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L72"
                    _t.errorf(("%s, Offset: got offset %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_offs2), stdgo.Go.toInterface(_offs));
                };
var __tmp__ = stdgo._internal.go.token.Token__linecol._linecol(_lines, _offs), _line:stdgo.GoInt = __tmp__._0, _col:stdgo.GoInt = __tmp__._1;
var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s (offs = %d, p = %d)" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_offs), stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L76"
                stdgo._internal.go.token.Token__checkpos._checkPos(_t, _msg.__copy__(), _f.position(_f.pos(_offs)).__copy__(), (new stdgo._internal.go.token.Token_position.Position(_f.name().__copy__(), _offs, _line, _col) : stdgo._internal.go.token.Token_position.Position));
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L77"
                stdgo._internal.go.token.Token__checkpos._checkPos(_t, _msg.__copy__(), _fset.position(_p).__copy__(), (new stdgo._internal.go.token.Token_position.Position(_f.name().__copy__(), _offs, _line, _col) : stdgo._internal.go.token.Token_position.Position));
                _offs++;
            };
        };
    }
