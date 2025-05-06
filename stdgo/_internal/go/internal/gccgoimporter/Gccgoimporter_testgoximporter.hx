package stdgo._internal.go.internal.gccgoimporter;
function testGoxImporter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L103"
        stdgo._internal.internal.testenv.Testenv_musthaveexec.mustHaveExec(stdgo.Go.asInterface(_t));
        var _initmap = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>);
        var _imp = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("testdata" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _initmap) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L107"
        for (__0 => _test in stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__importertests._importerTests.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer_test.go#L108"
            stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__runimportertest._runImporterTest(_t, _imp, _initmap, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>));
        };
    }
