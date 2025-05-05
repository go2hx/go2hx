package stdgo._internal.encoding.gob;
function testBasic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L40"
        for (__8 => _tt in stdgo._internal.encoding.gob.Gob__basictypes._basicTypes) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L41"
            if (_tt._id._string() != (_tt._str)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L42"
                _t.errorf(("checkType: expected %q got %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._str), stdgo.Go.toInterface(_tt._id._string()));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L44"
            if (_tt._id == ((0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L45"
                _t.errorf(("id for %q is zero" : stdgo.GoString), stdgo.Go.toInterface(_tt._str));
            };
        };
    }
