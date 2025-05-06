package stdgo._internal.go.token;
@:structInit @:using(stdgo._internal.go.token.Token_t_serializedfileset_static_extension.T_serializedFileSet_static_extension) class T_serializedFileSet {
    public var base : stdgo.GoInt = 0;
    public var files : stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile> = (null : stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>);
    public function new(?base:stdgo.GoInt, ?files:stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>) {
        if (base != null) this.base = base;
        if (files != null) this.files = files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serializedFileSet(base, files);
    }
}
