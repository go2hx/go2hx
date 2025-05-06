package stdgo.go.internal.gcimporter;
/**
    * Package gcimporter implements Import for gc-generated object files.
**/
class Gcimporter {
    /**
        * FindExportData positions the reader r at the beginning of the
        * export data section of an underlying GC-created object/archive
        * file by reading from it. The reader must be positioned at the
        * start of the file before calling this function. The hdr result
        * is the string before the export data, either "$$" or "$$B".
    **/
    static public inline function findExportData(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return stdgo._internal.go.internal.gcimporter.Gcimporter_findexportdata.findExportData(_r);
    /**
        * FindPkg returns the filename and unique package id for an import
        * path based on package information provided by build.Import (using
        * the build.Default build.Context). A relative srcDir is interpreted
        * relative to the current working directory.
        * If no file was found, an empty filename is returned.
    **/
    static public inline function findPkg(_path:stdgo.GoString, _srcDir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return stdgo._internal.go.internal.gcimporter.Gcimporter_findpkg.findPkg(_path, _srcDir);
    /**
        * Import imports a gc-generated package given its import path and srcDir, adds
        * the corresponding package object to the packages map, and returns the object.
        * The packages map must contain all packages already imported.
    **/
    static public inline function import_(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _lookup:stdgo.GoString -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } return stdgo._internal.go.internal.gcimporter.Gcimporter_import_.import_(_fset, _packages, _path, _srcDir, _lookup);
}
