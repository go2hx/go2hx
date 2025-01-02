package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.CustomError_asInterface) class CustomError_static_extension {
    @:keep
    @:tdfield
    static public function error( _:stdgo.Ref<stdgo._internal.text.template.Template_CustomError.CustomError>):stdgo.GoString {
        @:recv var _:stdgo.Ref<stdgo._internal.text.template.Template_CustomError.CustomError> = _;
        return ("heyo !" : stdgo.GoString);
    }
}
