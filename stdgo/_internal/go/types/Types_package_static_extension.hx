package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Package_asInterface) class Package_static_extension {
    @:keep
    @:tdfield
    static public function string( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.GoString {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L81"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("package %s (%q)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _pkg ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((@:checkr _pkg ?? throw "null pointer dereference")._path))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function setImports( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>):Void {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        (@:checkr _pkg ?? throw "null pointer dereference")._imports = _list;
    }
    @:keep
    @:tdfield
    static public function imports( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L74"
        return (@:checkr _pkg ?? throw "null pointer dereference")._imports;
    }
    @:keep
    @:tdfield
    static public function markComplete( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):Void {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        (@:checkr _pkg ?? throw "null pointer dereference")._complete = true;
    }
    @:keep
    @:tdfield
    static public function complete( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):Bool {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L60"
        return (@:checkr _pkg ?? throw "null pointer dereference")._complete;
    }
    @:keep
    @:tdfield
    static public function scope( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L52"
        if (({
            final value = _pkg;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L53"
            return (@:checkr _pkg ?? throw "null pointer dereference")._scope;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L55"
        return stdgo._internal.go.types.Types_universe.universe;
    }
    @:keep
    @:tdfield
    static public function goVersion( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.GoString {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L45"
        return (@:checkr _pkg ?? throw "null pointer dereference")._goVersion?.__copy__();
    }
    @:keep
    @:tdfield
    static public function setName( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Void {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        (@:checkr _pkg ?? throw "null pointer dereference")._name = _name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function name( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.GoString {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L36"
        return (@:checkr _pkg ?? throw "null pointer dereference")._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function path( _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.GoString {
        @:recv var _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = _pkg;
        //"file:///home/runner/.go/go1.21.3/src/go/types/package.go#L33"
        return (@:checkr _pkg ?? throw "null pointer dereference")._path?.__copy__();
    }
}
