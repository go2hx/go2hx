package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.debug.elf.Elf_FormatError.FormatError> = _e;
        var _msg = (_e._msg?.__copy__() : stdgo.GoString);
        if (_e._val != null) {
            _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf((" \'%v\' " : stdgo.GoString), _e._val))?.__copy__() : stdgo.GoString);
        };
        _msg = (_msg + (stdgo._internal.fmt.Fmt_sprintf.sprintf(("in record at byte %#x" : stdgo.GoString), stdgo.Go.toInterface(_e._off)))?.__copy__() : stdgo.GoString);
        return _msg?.__copy__();
    }
}
