package stdgo._internal.go.types;
function testParseGoVersion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/version_test.go#L21"
        for (__0 => _tt in stdgo._internal.go.types.Types__parsegoversiontests._parseGoVersionTests) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/version_test.go#L22"
            {
                var __tmp__ = stdgo._internal.go.types.Types__parsegoversion._parseGoVersion(_tt._in?.__copy__()), _out:stdgo._internal.go.types.Types_t_version.T_version = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((stdgo.Go.toInterface(_out) != stdgo.Go.toInterface(_tt._out)) || (_err != null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/version_test.go#L23"
                    _t.errorf(("parseGoVersion(%q) = %v, %v, want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._out)));
                };
            };
        };
    }
