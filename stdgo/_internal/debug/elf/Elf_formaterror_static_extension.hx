package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.elf.Elf_formaterror.FormatError> = _e;
        var _msg = ((@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__() : stdgo.GoString);
        if ((@:checkr _e ?? throw "null pointer dereference")._val != null) {
            _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((" \'%v\' " : stdgo.GoString) : stdgo.GoString), (@:checkr _e ?? throw "null pointer dereference")._val))?.__copy__() : stdgo.GoString);
        };
        _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("in record at byte %#x" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference")._off)))?.__copy__() : stdgo.GoString);
        return _msg?.__copy__();
    }
}
