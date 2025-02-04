package stdgo._internal.text.template;
@:structInit @:using(stdgo._internal.text.template.Template_t_testissue48215___localname___b_58304_static_extension.T_testIssue48215___localname___B_58304_static_extension) class T_testIssue48215___localname___B_58304 {
    @:embedded
    public var a : stdgo.Ref<stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273> = (null : stdgo.Ref<stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273>);
    public function new(?a:stdgo.Ref<stdgo._internal.text.template.Template_t_testissue48215___localname___a_58273.T_testIssue48215___localname___A_58273>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue48215___localname___B_58304(a);
    }
}
