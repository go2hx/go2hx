package stdgo.go.build;
var findOnly : ImportMode = 1i64;
var allowBinary : ImportMode = 2i64;
var importComment : ImportMode = 4i64;
var ignoreVendor : ImportMode = 8i64;
var toolDir(get, set) : stdgo.GoString;
private function get_toolDir():stdgo.GoString return stdgo._internal.go.build.Build_tooldir.toolDir;
private function set_toolDir(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.go.build.Build_tooldir.toolDir = v;
        return v;
    }
var default_(get, set) : Context;
private function get_default_():Context return stdgo._internal.go.build.Build_default_.default_;
private function set_default_(v:Context):stdgo._internal.go.build.Build_context.Context {
        stdgo._internal.go.build.Build_default_.default_ = v;
        return v;
    }
typedef Context = stdgo._internal.go.build.Build_context.Context;
typedef Package = stdgo._internal.go.build.Build_package.Package;
typedef Directive = stdgo._internal.go.build.Build_directive.Directive;
typedef NoGoError = stdgo._internal.go.build.Build_nogoerror.NoGoError;
typedef MultiplePackageError = stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError;
typedef ImportMode = stdgo._internal.go.build.Build_importmode.ImportMode;
typedef ContextPointer = stdgo._internal.go.build.Build_contextpointer.ContextPointer;
typedef PackagePointer = stdgo._internal.go.build.Build_packagepointer.PackagePointer;
typedef DirectivePointer = stdgo._internal.go.build.Build_directivepointer.DirectivePointer;
typedef NoGoErrorPointer = stdgo._internal.go.build.Build_nogoerrorpointer.NoGoErrorPointer;
typedef MultiplePackageErrorPointer = stdgo._internal.go.build.Build_multiplepackageerrorpointer.MultiplePackageErrorPointer;
typedef ImportModePointer = stdgo._internal.go.build.Build_importmodepointer.ImportModePointer;
/**
    * Package build gathers information about Go packages.
    * 
    * # Go Path
    * 
    * The Go path is a list of directory trees containing Go source code.
    * It is consulted to resolve imports that cannot be found in the standard
    * Go tree. The default path is the value of the GOPATH environment
    * variable, interpreted as a path list appropriate to the operating system
    * (on Unix, the variable is a colon-separated string;
    * on Windows, a semicolon-separated string;
    * on Plan 9, a list).
    * 
    * Each directory listed in the Go path must have a prescribed structure:
    * 
    * The src/ directory holds source code. The path below 'src' determines
    * the import path or executable name.
    * 
    * The pkg/ directory holds installed package objects.
    * As in the Go tree, each target operating system and
    * architecture pair has its own subdirectory of pkg
    * (pkg/GOOS_GOARCH).
    * 
    * If DIR is a directory listed in the Go path, a package with
    * source in DIR/src/foo/bar can be imported as "foo/bar" and
    * has its compiled form installed to "DIR/pkg/GOOS_GOARCH/foo/bar.a"
    * (or, for gccgo, "DIR/pkg/gccgo/foo/libbar.a").
    * 
    * The bin/ directory holds compiled commands.
    * Each command is named for its source directory, but only
    * using the final element, not the entire path. That is, the
    * command with source in DIR/src/foo/quux is installed into
    * DIR/bin/quux, not DIR/bin/foo/quux. The foo/ is stripped
    * so that you can add DIR/bin to your PATH to get at the
    * installed commands.
    * 
    * Here's an example directory layout:
    * 
    * 	GOPATH=/home/user/gocode
    * 
    * 	/home/user/gocode/
    * 	    src/
    * 	        foo/
    * 	            bar/               (go code in package bar)
    * 	                x.go
    * 	            quux/              (go code in package main)
    * 	                y.go
    * 	    bin/
    * 	        quux                   (installed command)
    * 	    pkg/
    * 	        linux_amd64/
    * 	            foo/
    * 	                bar.a          (installed package object)
    * 
    * # Build Constraints
    * 
    * A build constraint, also known as a build tag, is a condition under which a
    * file should be included in the package. Build constraints are given by a
    * line comment that begins
    * 
    * 	//go:build
    * 
    * Build constraints may also be part of a file's name
    * (for example, source_windows.go will only be included if the target
    * operating system is windows).
    * 
    * See 'go help buildconstraint'
    * (https://golang.org/cmd/go/#hdr-Build_constraints) for details.
    * 
    * # Binary-Only Packages
    * 
    * In Go 1.12 and earlier, it was possible to distribute packages in binary
    * form without including the source code used for compiling the package.
    * The package was distributed with a source file not excluded by build
    * constraints and containing a "//go:binary-only-package" comment. Like a
    * build constraint, this comment appeared at the top of a file, preceded
    * only by blank lines and other line comments and with a blank line
    * following the comment, to separate it from the package documentation.
    * Unlike build constraints, this comment is only recognized in non-test
    * Go source files.
    * 
    * The minimal source code for a binary-only package was therefore:
    * 
    * 	//go:binary-only-package
    * 
    * 	package mypkg
    * 
    * The source code could include additional Go code. That code was never
    * compiled but would be processed by tools like godoc and might be useful
    * as end-user documentation.
    * 
    * "go build" and other commands no longer support binary-only-packages.
    * Import and ImportDir will still set the BinaryOnly flag in packages
    * containing these comments for use in tools and error messages.
**/
class Build {
    /**
        * Import is shorthand for Default.Import.
    **/
    static public inline function import_(_path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } return stdgo._internal.go.build.Build_import_.import_(_path, _srcDir, _mode);
    /**
        * ImportDir is shorthand for Default.ImportDir.
    **/
    static public inline function importDir(_dir:stdgo.GoString, _mode:ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } return stdgo._internal.go.build.Build_importdir.importDir(_dir, _mode);
    /**
        * IsLocalImport reports whether the import path is
        * a local import path, like ".", "..", "./foo", or "../foo".
    **/
    static public inline function isLocalImport(_path:stdgo.GoString):Bool return stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path);
    /**
        * ArchChar returns "?" and an error.
        * In earlier versions of Go, the returned string was used to derive
        * the compiler and linker tool names, the default object file suffix,
        * and the default linker output name. As of Go 1.5, those strings
        * no longer vary by architecture; they are compile, link, .o, and a.out, respectively.
    **/
    static public inline function archChar(_goarch:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.go.build.Build_archchar.archChar(_goarch);
}
