package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.U_asInterface) class U_static_extension {
    @:keep
    static public function trueFalse( _u:stdgo.Ref<stdgo._internal.text.template.Template_U.U>, _b:Bool):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.text.template.Template_U.U> = _u;
        if (_b) {
            return ("true" : stdgo.GoString);
        };
        return stdgo.Go.str()?.__copy__();
    }
}