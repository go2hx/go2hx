package stdgo._internal.go.types;
function newPackage(_path:stdgo.GoString, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        var _scope = stdgo._internal.go.types.Types_newscope.newScope(stdgo._internal.go.types.Types_universe.universe, stdgo._internal.go.types.Types__nopos._nopos, stdgo._internal.go.types.Types__nopos._nopos, stdgo._internal.fmt.Fmt_sprintf.sprintf(("package %q" : stdgo.GoString), stdgo.Go.toInterface(_path))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L29"
        return (stdgo.Go.setRef(({ _path : _path?.__copy__(), _name : _name?.__copy__(), _scope : _scope } : stdgo._internal.go.types.Types_package.Package)) : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
    }
