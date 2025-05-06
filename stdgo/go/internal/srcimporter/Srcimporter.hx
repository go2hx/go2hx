package stdgo.go.internal.srcimporter;
typedef Importer = stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer;
typedef ImporterPointer = stdgo._internal.go.internal.srcimporter.Srcimporter_importerpointer.ImporterPointer;
/**
    * Package srcimporter implements importing directly
    * from source files rather than installed packages.
**/
class Srcimporter {
    /**
        * New returns a new Importer for the given context, file set, and map
        * of packages. The context is used to resolve import paths to package paths,
        * and identifying the files belonging to the package. If the context provides
        * non-nil file system functions, they are used instead of the regular package
        * os functions. The file set is used to track position information of package
        * files; and imported packages are added to the packages map.
    **/
    static public inline function new_(_ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>):stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> return stdgo._internal.go.internal.srcimporter.Srcimporter_new_.new_(_ctxt, _fset, _packages);
}
