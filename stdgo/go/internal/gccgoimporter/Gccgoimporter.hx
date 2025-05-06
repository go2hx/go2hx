package stdgo.go.internal.gccgoimporter;
typedef GccgoInstallation = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation;
typedef PackageInit = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit;
typedef InitData = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData;
typedef Importer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer;
typedef GccgoInstallationPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallationpointer.GccgoInstallationPointer;
typedef PackageInitPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinitpointer.PackageInitPointer;
typedef InitDataPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdatapointer.InitDataPointer;
typedef ImporterPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importerpointer.ImporterPointer;
/**
    * Package gccgoimporter implements Import for gccgo-generated object files.
**/
class Gccgoimporter {
    static public inline function testInstallationImporter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testinstallationimporter.testInstallationImporter(_t);
    static public inline function getImporter(_searchpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>):stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter(_searchpaths, _initmap);
    static public inline function testGoxImporter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testgoximporter.testGoxImporter(_t);
    static public inline function testObjImporter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testobjimporter.testObjImporter(_t);
    static public inline function testTypeParser(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testtypeparser.testTypeParser(_t);
}
