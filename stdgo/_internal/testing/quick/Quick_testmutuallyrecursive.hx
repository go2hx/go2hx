package stdgo._internal.testing.quick;
function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = (function(_a:stdgo._internal.testing.quick.Quick_a.A):Bool {
            //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L290"
            return true;
        } : stdgo._internal.testing.quick.Quick_a.A -> Bool);
        //"file:///home/runner/.go/go1.21.3/src/testing/quick/quick_test.go#L291"
        stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(_f), null);
    }
