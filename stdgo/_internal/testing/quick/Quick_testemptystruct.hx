package stdgo._internal.testing.quick;
function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = (function(_0:stdgo._internal.testing.quick.Quick_t__struct_0.T__struct_0):Bool {
            return true;
        } : stdgo._internal.testing.quick.Quick_t__struct_0.T__struct_0 -> Bool);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), null);
    }
