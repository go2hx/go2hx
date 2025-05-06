package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_multiplepackageerror_static_extension.MultiplePackageError_static_extension) class MultiplePackageError {
    public var dir : stdgo.GoString = "";
    public var packages : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var files : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?dir:stdgo.GoString, ?packages:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoString>) {
        if (dir != null) this.dir = dir;
        if (packages != null) this.packages = packages;
        if (files != null) this.files = files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MultiplePackageError(dir, packages, files);
    }
}
