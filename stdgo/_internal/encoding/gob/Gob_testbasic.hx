package stdgo._internal.encoding.gob;
function testBasic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _tt in stdgo._internal.encoding.gob.Gob__basictypes._basicTypes) {
            if (_tt._id._string() != (_tt._str)) {
                @:check2r _t.errorf(("checkType: expected %q got %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._str), stdgo.Go.toInterface(_tt._id._string()));
            };
            if (_tt._id == ((0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId))) {
                @:check2r _t.errorf(("id for %q is zero" : stdgo.GoString), stdgo.Go.toInterface(_tt._str));
            };
        };
    }
