package stdgo._internal.text.template;
@:keep @:allow(stdgo._internal.text.template.Template.ErrorWriter_asInterface) class ErrorWriter_static_extension {
    @:keep
    static public function write( _e:stdgo._internal.text.template.Template_ErrorWriter.ErrorWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo._internal.text.template.Template_ErrorWriter.ErrorWriter = _e;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.text.template.Template__alwaysError._alwaysError };
    }
}