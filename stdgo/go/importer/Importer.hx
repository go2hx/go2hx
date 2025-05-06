package stdgo.go.importer;
typedef Lookup = stdgo._internal.go.importer.Importer_lookup.Lookup;
typedef LookupPointer = stdgo._internal.go.importer.Importer_lookuppointer.LookupPointer;
/**
    * Package importer provides access to export data importers.
**/
class Importer {
    /**
        * ForCompiler returns an Importer for importing from installed packages
        * for the compilers "gc" and "gccgo", or for importing directly
        * from the source if the compiler argument is "source". In this
        * latter case, importing may fail under circumstances where the
        * exported API is not entirely defined in pure Go source code
        * (if the package API depends on cgo-defined entities, the type
        * checker won't have access to those).
        * 
        * The lookup function is called each time the resulting importer needs
        * to resolve an import path. In this mode the importer can only be
        * invoked with canonical import paths (not relative or absolute ones);
        * it is assumed that the translation to canonical import paths is being
        * done by the client of the importer.
        * 
        * A lookup function must be provided for correct module-aware operation.
        * Deprecated: If lookup is nil, for backwards-compatibility, the importer
        * will attempt to resolve imports in the $GOPATH workspace.
    **/
    static public inline function forCompiler(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _compiler:stdgo.GoString, _lookup:Lookup):stdgo._internal.go.types.Types_importer.Importer return stdgo._internal.go.importer.Importer_forcompiler.forCompiler(_fset, _compiler, _lookup);
    /**
        * For calls ForCompiler with a new FileSet.
        * 
        * Deprecated: Use ForCompiler, which populates a FileSet
        * with the positions of objects created by the importer.
    **/
    static public inline function for_(_compiler:stdgo.GoString, _lookup:Lookup):stdgo._internal.go.types.Types_importer.Importer return stdgo._internal.go.importer.Importer_for_.for_(_compiler, _lookup);
    /**
        * Default returns an Importer for the compiler that built the running binary.
        * If available, the result implements types.ImporterFrom.
    **/
    static public inline function default_():stdgo._internal.go.types.Types_importer.Importer return stdgo._internal.go.importer.Importer_default_.default_();
    static public inline function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void stdgo._internal.go.importer.Importer_testmain.testMain(_m);
    static public inline function testForCompiler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.importer.Importer_testforcompiler.testForCompiler(_t);
}
