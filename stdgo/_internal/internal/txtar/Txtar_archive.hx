package stdgo._internal.internal.txtar;
@:structInit @:using(stdgo._internal.internal.txtar.Txtar_archive_static_extension.Archive_static_extension) class Archive {
    public var comment : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var files : stdgo.Slice<stdgo._internal.internal.txtar.Txtar_file.File> = (null : stdgo.Slice<stdgo._internal.internal.txtar.Txtar_file.File>);
    public function new(?comment:stdgo.Slice<stdgo.GoUInt8>, ?files:stdgo.Slice<stdgo._internal.internal.txtar.Txtar_file.File>) {
        if (comment != null) this.comment = comment;
        if (files != null) this.files = files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Archive(comment, files);
    }
}
