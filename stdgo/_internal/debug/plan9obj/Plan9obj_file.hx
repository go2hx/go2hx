package stdgo._internal.debug.plan9obj;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_file_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader = ({} : stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>>);
    public var _closer : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public function new(?fileHeader:stdgo._internal.debug.plan9obj.Plan9obj_fileheader.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_section.Section>>, ?_closer:stdgo._internal.io.Io_closer.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (sections != null) this.sections = sections;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, sections, _closer);
    }
}
