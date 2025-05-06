package stdgo._internal.go.token;
function testLineInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _f = _fset.addFile(("foo" : stdgo.GoString), _fset.base(), (500 : stdgo.GoInt));
        var _lines = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(0 : stdgo.GoInt), (42 : stdgo.GoInt), (77 : stdgo.GoInt), (100 : stdgo.GoInt), (210 : stdgo.GoInt), (220 : stdgo.GoInt), (277 : stdgo.GoInt), (300 : stdgo.GoInt), (333 : stdgo.GoInt), (401 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L157"
        for (__20 => _offs in _lines) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L158"
            _f.addLine(_offs);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L159"
            _f.addLineInfo(_offs, ("bar" : stdgo.GoString), (42 : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L162"
        {
            var _offs = (0 : stdgo.GoInt);
            while ((_offs <= _f.size() : Bool)) {
                var _p = (_f.pos(_offs) : stdgo._internal.go.token.Token_pos.Pos);
var __tmp__ = stdgo._internal.go.token.Token__linecol._linecol(_lines, _offs), __21:stdgo.GoInt = __tmp__._0, _col:stdgo.GoInt = __tmp__._1;
var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s (offs = %d, p = %d)" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_offs), stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L166"
                stdgo._internal.go.token.Token__checkpos._checkPos(_t, _msg.__copy__(), _f.position(_f.pos(_offs)).__copy__(), (new stdgo._internal.go.token.Token_position.Position(("bar" : stdgo.GoString), _offs, (42 : stdgo.GoInt), _col) : stdgo._internal.go.token.Token_position.Position));
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L167"
                stdgo._internal.go.token.Token__checkpos._checkPos(_t, _msg.__copy__(), _fset.position(_p).__copy__(), (new stdgo._internal.go.token.Token_position.Position(("bar" : stdgo.GoString), _offs, (42 : stdgo.GoInt), _col) : stdgo._internal.go.token.Token_position.Position));
                _offs++;
            };
        };
    }
