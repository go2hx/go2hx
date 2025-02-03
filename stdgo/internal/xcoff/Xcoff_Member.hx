package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.Member_static_extension) abstract Member(stdgo._internal.internal.xcoff.Xcoff_Member.Member) from stdgo._internal.internal.xcoff.Xcoff_Member.Member to stdgo._internal.internal.xcoff.Xcoff_Member.Member {
    public var memberHeader(get, set) : MemberHeader;
    function get_memberHeader():MemberHeader return this.memberHeader;
    function set_memberHeader(v:MemberHeader):MemberHeader {
        this.memberHeader = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get__sr():stdgo._internal.io.Io_SectionReader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this._sr = (v : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        return v;
    }
    public function new(?memberHeader:MemberHeader, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.internal.xcoff.Xcoff_Member.Member(memberHeader, (_sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
