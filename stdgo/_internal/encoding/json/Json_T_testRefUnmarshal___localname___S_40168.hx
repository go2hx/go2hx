package stdgo._internal.encoding.json;
@:structInit class T_testRefUnmarshal___localname___S_40168 {
    public var r0 : stdgo._internal.encoding.json.Json_Ref.Ref = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_Ref.Ref);
    public var r1 : stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref>);
    public var r2 : stdgo._internal.encoding.json.Json_RefText.RefText = ((0 : stdgo.GoInt) : stdgo._internal.encoding.json.Json_RefText.RefText);
    public var r3 : stdgo.Pointer<stdgo._internal.encoding.json.Json_RefText.RefText> = (null : stdgo.Pointer<stdgo._internal.encoding.json.Json_RefText.RefText>);
    public function new(?r0:stdgo._internal.encoding.json.Json_Ref.Ref, ?r1:stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref>, ?r2:stdgo._internal.encoding.json.Json_RefText.RefText, ?r3:stdgo.Pointer<stdgo._internal.encoding.json.Json_RefText.RefText>) {
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
