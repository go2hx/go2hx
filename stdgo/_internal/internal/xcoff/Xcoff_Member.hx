package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_Member_static_extension.Member_static_extension) class Member {
    @:embedded
    public var memberHeader : stdgo._internal.internal.xcoff.Xcoff_MemberHeader.MemberHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_MemberHeader.MemberHeader);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
    public function new(?memberHeader:stdgo._internal.internal.xcoff.Xcoff_MemberHeader.MemberHeader, ?_sr:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>) {
        if (memberHeader != null) this.memberHeader = memberHeader;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Member(memberHeader, _sr);
    }
}
