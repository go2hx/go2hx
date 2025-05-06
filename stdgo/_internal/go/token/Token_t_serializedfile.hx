package stdgo._internal.go.token;
@:structInit @:using(stdgo._internal.go.token.Token_t_serializedfile_static_extension.T_serializedFile_static_extension) class T_serializedFile {
    public var name : stdgo.GoString = "";
    public var base : stdgo.GoInt = 0;
    public var size : stdgo.GoInt = 0;
    public var lines : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var infos : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo> = (null : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>);
    public function new(?name:stdgo.GoString, ?base:stdgo.GoInt, ?size:stdgo.GoInt, ?lines:stdgo.Slice<stdgo.GoInt>, ?infos:stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>) {
        if (name != null) this.name = name;
        if (base != null) this.base = base;
        if (size != null) this.size = size;
        if (lines != null) this.lines = lines;
        if (infos != null) this.infos = infos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serializedFile(name, base, size, lines, infos);
    }
}
