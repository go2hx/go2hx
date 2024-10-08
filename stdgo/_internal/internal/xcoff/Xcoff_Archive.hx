package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_Archive_static_extension.Archive_static_extension) class Archive {
    @:embedded
    public var archiveHeader : stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader.ArchiveHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader.ArchiveHeader);
    public var members : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>>);
    public var _closer : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public function new(?archiveHeader:stdgo._internal.internal.xcoff.Xcoff_ArchiveHeader.ArchiveHeader, ?members:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>>, ?_closer:stdgo._internal.io.Io_Closer.Closer) {
        if (archiveHeader != null) this.archiveHeader = archiveHeader;
        if (members != null) this.members = members;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Archive(archiveHeader, members, _closer);
    }
}
