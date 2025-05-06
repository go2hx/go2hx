package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.MultiplePackageError_asInterface) class MultiplePackageError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L525"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("found packages %s (%s) and %s (%s) in %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").packages[(0 : stdgo.GoInt)]), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").files[(0 : stdgo.GoInt)]), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").packages[(1 : stdgo.GoInt)]), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").files[(1 : stdgo.GoInt)]), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").dir))?.__copy__();
    }
}
