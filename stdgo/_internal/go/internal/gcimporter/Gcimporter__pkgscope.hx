package stdgo._internal.go.internal.gcimporter;
function _pkgScope(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L653"
        if (({
            final value = _pkg;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L654"
            return _pkg.scope();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/ureader.go#L656"
        return stdgo._internal.go.types.Types_universe.universe;
    }
