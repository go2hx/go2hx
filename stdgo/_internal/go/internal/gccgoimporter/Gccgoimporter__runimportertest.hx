package stdgo._internal.go.internal.gccgoimporter;
function _runImporterTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _imp:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>, _test:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>):Void {
        var __tmp__ = _imp((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), (@:checkr _test ?? throw "null pointer dereference")._pkgpath?.__copy__(), ("." : stdgo.GoString), null), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L26"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L27"
            _t.error(stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L28"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L31"
        if ((@:checkr _test ?? throw "null pointer dereference")._name != ((stdgo.Go.str() : stdgo.GoString))) {
            var _obj = (_pkg.scope().lookup((@:checkr _test ?? throw "null pointer dereference")._name?.__copy__()) : stdgo._internal.go.types.Types_object.Object);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L33"
            if (_obj == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L34"
                _t.errorf(("%s: object not found" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _test ?? throw "null pointer dereference")._name));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L35"
                return;
            };
            var _got = (stdgo._internal.go.types.Types_objectstring.objectString(_obj, stdgo._internal.go.types.Types_relativeto.relativeTo(_pkg))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L39"
            if (_got != ((@:checkr _test ?? throw "null pointer dereference")._want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L40"
                _t.errorf(("%s: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _test ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((@:checkr _test ?? throw "null pointer dereference")._want));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L43"
            if ((@:checkr _test ?? throw "null pointer dereference")._wantval != ((stdgo.Go.str() : stdgo.GoString))) {
                var _gotval = (((stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>)) : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>).val().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L45"
                if (_gotval != ((@:checkr _test ?? throw "null pointer dereference")._wantval)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L46"
                    _t.errorf(("%s: got val %q; want val %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _test ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_gotval), stdgo.Go.toInterface((@:checkr _test ?? throw "null pointer dereference")._wantval));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L51"
        if ((((@:checkr _test ?? throw "null pointer dereference")._wantinits.length) > (0 : stdgo.GoInt) : Bool)) {
            var _initdata = ((_initmap[_pkg] ?? ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData))?.__copy__() : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData);
            var _found = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L55"
            for (__0 => _pkginit in _initdata.inits) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L56"
                if (_pkginit.initFunc == ((@:checkr _test ?? throw "null pointer dereference")._wantinits[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                    _found = true;
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L58"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L62"
            if (!_found) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L63"
                _t.errorf(("%s: could not find expected function %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _test ?? throw "null pointer dereference")._pkgpath), stdgo.Go.toInterface((@:checkr _test ?? throw "null pointer dereference")._wantinits[(0 : stdgo.GoInt)]));
            };
        };
    }
