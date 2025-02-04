package stdgo._internal.testing.quick;
function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = (function(_a:stdgo._internal.testing.quick.Quick_a.A):Bool {
            return true;
        } : stdgo._internal.testing.quick.Quick_a.A -> Bool);
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), null);
    }
