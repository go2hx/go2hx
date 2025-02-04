package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_member_static_extension.Member_static_extension) class Member {
    @:embedded
    public var memberHeader : stdgo._internal.internal.xcoff.Xcoff_memberheader.MemberHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_memberheader.MemberHeader);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
    public function new(?memberHeader:stdgo._internal.internal.xcoff.Xcoff_memberheader.MemberHeader, ?_sr:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>) {
        if (memberHeader != null) this.memberHeader = memberHeader;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Member(memberHeader, _sr);
    }
}
