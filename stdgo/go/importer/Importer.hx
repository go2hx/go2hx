package stdgo.go.importer;
/**
    // Package importer provides access to export data importers.
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef T_gcimports = Dynamic;
@:invalid typedef T_gccgoimports = Dynamic;
typedef Lookup = stdgo._internal.go.importer.Importer.Lookup;
/**
    // ForCompiler returns an Importer for importing from installed packages
    // for the compilers "gc" and "gccgo", or for importing directly
    // from the source if the compiler argument is "source". In this
    // latter case, importing may fail under circumstances where the
    // exported API is not entirely defined in pure Go source code
    // (if the package API depends on cgo-defined entities, the type
    // checker won't have access to those).
    //
    // The lookup function is called each time the resulting importer needs
    // to resolve an import path. In this mode the importer can only be
    // invoked with canonical import paths (not relative or absolute ones);
    // it is assumed that the translation to canonical import paths is being
    // done by the client of the importer.
    //
    // A lookup function must be provided for correct module-aware operation.
    // Deprecated: If lookup is nil, for backwards-compatibility, the importer
    // will attempt to resolve imports in the $GOPATH workspace.
**/
inline function forCompiler(fset:stdgo._internal.go.token.Token.FileSet, compiler:String, lookup:Lookup):stdgo._internal.go.types.Types.Importer throw "not implemented";
/**
    // For calls ForCompiler with a new FileSet.
    //
    // Deprecated: Use ForCompiler, which populates a FileSet
    // with the positions of objects created by the importer.
**/
inline function for_(compiler:String, lookup:Lookup):stdgo._internal.go.types.Types.Importer throw "not implemented";
/**
    // Default returns an Importer for the compiler that built the running binary.
    // If available, the result implements types.ImporterFrom.
**/
inline function default_():stdgo._internal.go.types.Types.Importer throw "not implemented";
inline function testMain(m:stdgo._internal.testing.Testing.M):Void throw "not implemented";
inline function testForCompiler(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_gcimports_asInterface = Dynamic;
@:invalid typedef T_gcimports_static_extension = Dynamic;
@:invalid typedef T_gccgoimports_asInterface = Dynamic;
@:invalid typedef T_gccgoimports_static_extension = Dynamic;
