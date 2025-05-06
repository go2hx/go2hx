package stdgo._internal.go.importer;
@:keep @:allow(stdgo._internal.go.importer.Importer.T_gccgoimports_asInterface) class T_gccgoimports_static_extension {
    @:keep
    @:tdfield
    static public function importFrom( _m:stdgo.Ref<stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports> = _m;
        //"file:///home/runner/.go/go1.21.3/src/go/importer/importer.go#L118"
        if (_mode != ((0 : stdgo._internal.go.types.Types_importmode.ImportMode))) {
            //"file:///home/runner/.go/go1.21.3/src/go/importer/importer.go#L119"
            throw stdgo.Go.toInterface(("mode must be 0" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/importer/importer.go#L121"
        return (@:checkr _m ?? throw "null pointer dereference")._importer((@:checkr _m ?? throw "null pointer dereference")._packages, _path?.__copy__(), _srcDir?.__copy__(), (@:checkr _m ?? throw "null pointer dereference")._lookup);
    }
    @:keep
    @:tdfield
    static public function import_( _m:stdgo.Ref<stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports>, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.go.importer.Importer_t_gccgoimports.T_gccgoimports> = _m;
        //"file:///home/runner/.go/go1.21.3/src/go/importer/importer.go#L114"
        return _m.importFrom(_path?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo._internal.go.types.Types_importmode.ImportMode));
    }
}
