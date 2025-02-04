package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.ErrorWriter_asInterface) class ErrorWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _e:stdgo._internal.text.template.Template_errorwriter.ErrorWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo._internal.text.template.Template_errorwriter.ErrorWriter = _e;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.text.template.Template__alwayserror._alwaysError };
    }
}
