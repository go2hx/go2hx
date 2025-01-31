package stdgo._internal.debug.plan9obj;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_File_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader = ({} : stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>);
    public var _closer : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public function new(?fileHeader:stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section>>, ?_closer:stdgo._internal.io.Io_Closer.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (sections != null) this.sections = sections;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, sections, _closer);
    }
}
