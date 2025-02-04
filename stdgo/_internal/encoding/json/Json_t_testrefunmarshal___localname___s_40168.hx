package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168_static_extension.T_testRefUnmarshal___localname___S_40168_static_extension) class T_testRefUnmarshal___localname___S_40168 {
    public var r0 : stdgo._internal.encoding.json.Json_ref.Ref = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_ref.Ref);
    public var r1 : stdgo.Pointer<stdgo._internal.encoding.json.Json_ref.Ref> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_ref.Ref>);
    public var r2 : stdgo._internal.encoding.json.Json_reftext.RefText = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_reftext.RefText);
    public var r3 : stdgo.Pointer<stdgo._internal.encoding.json.Json_reftext.RefText> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_reftext.RefText>);
    public function new(?r0:stdgo._internal.encoding.json.Json_ref.Ref, ?r1:stdgo.Pointer<stdgo._internal.encoding.json.Json_ref.Ref>, ?r2:stdgo._internal.encoding.json.Json_reftext.RefText, ?r3:stdgo.Pointer<stdgo._internal.encoding.json.Json_reftext.RefText>) {
        if (r0 != null) this.r0 = r0;
        if (r1 != null) this.r1 = r1;
        if (r2 != null) this.r2 = r2;
        if (r3 != null) this.r3 = r3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testRefUnmarshal___localname___S_40168(r0, r1, r2, r3);
    }
}
