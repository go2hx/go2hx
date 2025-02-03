package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testRefUnmarshal___localname___S_40168_static_extension) abstract T_testRefUnmarshal___localname___S_40168(stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168) from stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168 to stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168 {
    public var r0(get, set) : Ref;
    function get_r0():Ref return this.r0;
    function set_r0(v:Ref):Ref {
        this.r0 = v;
        return v;
    }
    public var r1(get, set) : stdgo.Pointer<Ref>;
    function get_r1():stdgo.Pointer<Ref> return this.r1;
    function set_r1(v:stdgo.Pointer<Ref>):stdgo.Pointer<Ref> {
        this.r1 = v;
        return v;
    }
    public var r2(get, set) : RefText;
    function get_r2():RefText return this.r2;
    function set_r2(v:RefText):RefText {
        this.r2 = v;
        return v;
    }
    public var r3(get, set) : stdgo.Pointer<RefText>;
    function get_r3():stdgo.Pointer<RefText> return this.r3;
    function set_r3(v:stdgo.Pointer<RefText>):stdgo.Pointer<RefText> {
        this.r3 = v;
        return v;
    }
    public function new(?r0:Ref, ?r1:stdgo.Pointer<Ref>, ?r2:RefText, ?r3:stdgo.Pointer<RefText>) this = new stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168(r0, r1, r2, r3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
