package stdgo.text.template;
@:structInit @:using(stdgo.text.template.Template.T_writeError_static_extension) abstract T_writeError(stdgo._internal.text.template.Template_T_writeError.T_writeError) from stdgo._internal.text.template.Template_T_writeError.T_writeError to stdgo._internal.text.template.Template_T_writeError.T_writeError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.text.template.Template_T_writeError.T_writeError((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
