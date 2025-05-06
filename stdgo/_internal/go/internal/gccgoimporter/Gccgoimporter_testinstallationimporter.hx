package stdgo._internal.go.internal.gccgoimporter;
function testInstallationImporter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _gpath = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__gccgopath._gccgoPath()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L153"
        if (_gpath == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L154"
            _t.skip(stdgo.Go.toInterface(("This test needs gccgo" : stdgo.GoString)));
        };
        var _inst:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation);
        var _err = (_inst.initFromDriver(_gpath?.__copy__()) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L159"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L160"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _imp = (_inst.getImporter((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>)) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer);
        var _pkgMap = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L167"
        for (__0 => _pkg in stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__importablepackages._importablePackages.__copy__()) {
            {
                var __tmp__ = _imp(_pkgMap, _pkg?.__copy__(), ("." : stdgo.GoString), null);
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L169"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L170"
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L174"
        for (__1 => _pkg in stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__importablepackages._importablePackages.__copy__()) {
            {
                var __tmp__ = _imp((({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), _pkg?.__copy__(), ("." : stdgo.GoString), null);
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L176"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L177"
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L182"
        for (__2 => _test in (new stdgo.GoArray<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>(6, 6, ...[({ _pkgpath : ("io" : stdgo.GoString), _name : ("Reader" : stdgo.GoString), _want : ("type Reader interface{Read(p []byte) (n int, err error)}" : stdgo.GoString) } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest), ({ _pkgpath : ("io" : stdgo.GoString), _name : ("ReadWriter" : stdgo.GoString), _want : ("type ReadWriter interface{Reader; Writer}" : stdgo.GoString) } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest), ({ _pkgpath : ("math" : stdgo.GoString), _name : ("Pi" : stdgo.GoString), _want : ("const Pi untyped float" : stdgo.GoString) } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest), ({ _pkgpath : ("math" : stdgo.GoString), _name : ("Sin" : stdgo.GoString), _want : ("func Sin(x float64) float64" : stdgo.GoString) } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest), ({ _pkgpath : ("sort" : stdgo.GoString), _name : ("Search" : stdgo.GoString), _want : ("func Search(n int, f func(int) bool) int" : stdgo.GoString) } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest), ({ _pkgpath : ("unsafe" : stdgo.GoString), _name : ("Pointer" : stdgo.GoString), _want : ("type Pointer" : stdgo.GoString) } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest)])) : stdgo.GoArray<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>).__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/gccgoinstallation_test.go#L190"
            stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__runimportertest._runImporterTest(_t, _imp, (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>), (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>));
        };
    }
