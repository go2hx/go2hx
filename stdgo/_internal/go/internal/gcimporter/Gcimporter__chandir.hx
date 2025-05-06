package stdgo._internal.go.internal.gcimporter;
function _chanDir(_d:stdgo.GoInt):stdgo._internal.go.types.Types_chandir.ChanDir {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L88"
        {
            final __value__ = _d;
            if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L90"
                return (2 : stdgo._internal.go.types.Types_chandir.ChanDir);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L92"
                return (1 : stdgo._internal.go.types.Types_chandir.ChanDir);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L94"
                return (0 : stdgo._internal.go.types.Types_chandir.ChanDir);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L96"
                stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected channel dir %d" : stdgo.GoString), stdgo.Go.toInterface(_d));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/support.go#L97"
                return (0 : stdgo._internal.go.types.Types_chandir.ChanDir);
            };
        };
    }
