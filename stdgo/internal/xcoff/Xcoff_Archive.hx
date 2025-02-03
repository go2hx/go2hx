package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.Archive_static_extension) abstract Archive(stdgo._internal.internal.xcoff.Xcoff_Archive.Archive) from stdgo._internal.internal.xcoff.Xcoff_Archive.Archive to stdgo._internal.internal.xcoff.Xcoff_Archive.Archive {
    public var archiveHeader(get, set) : ArchiveHeader;
    function get_archiveHeader():ArchiveHeader return this.archiveHeader;
    function set_archiveHeader(v:ArchiveHeader):ArchiveHeader {
        this.archiveHeader = v;
        return v;
    }
    public var members(get, set) : Array<Member>;
    function get_members():Array<Member> return [for (i in this.members) i];
    function set_members(v:Array<Member>):Array<Member> {
        this.members = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?archiveHeader:ArchiveHeader, ?members:Array<Member>, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.internal.xcoff.Xcoff_Archive.Archive(archiveHeader, ([for (i in members) (i : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Member.Member>>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
