package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_testIssue48215___localname___A_58273_static_extension) abstract T_testIssue48215___localname___A_58273(stdgo._internal.text.template.Template_T_testIssue48215___localname___A_58273.T_testIssue48215___localname___A_58273) from stdgo._internal.text.template.Template_T_testIssue48215___localname___A_58273.T_testIssue48215___localname___A_58273 to stdgo._internal.text.template.Template_T_testIssue48215___localname___A_58273.T_testIssue48215___localname___A_58273 {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.text.template.Template_T_testIssue48215___localname___A_58273.T_testIssue48215___localname___A_58273((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
