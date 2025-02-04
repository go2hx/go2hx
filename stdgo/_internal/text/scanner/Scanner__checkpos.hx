package stdgo._internal.text.scanner;
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _got:stdgo._internal.text.scanner.Scanner_position.Position, _want:stdgo._internal.text.scanner.Scanner_position.Position):Void {
        if (((_got.offset != (_want.offset) || _got.line != (_want.line) : Bool) || (_got.column != _want.column) : Bool)) {
            @:check2r _t.errorf(("got offset, line, column = %d, %d, %d; want %d, %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_got.offset), stdgo.Go.toInterface(_got.line), stdgo.Go.toInterface(_got.column), stdgo.Go.toInterface(_want.offset), stdgo.Go.toInterface(_want.line), stdgo.Go.toInterface(_want.column));
        };
    }
