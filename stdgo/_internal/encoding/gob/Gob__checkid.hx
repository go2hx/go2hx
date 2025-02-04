package stdgo._internal.encoding.gob;
function _checkId(_want:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _got:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void {
        if (_want != (_got)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("checkId: %d should be %d\n" : stdgo.GoString), stdgo.Go.toInterface((_got : stdgo.GoInt)), stdgo.Go.toInterface((_want : stdgo.GoInt)));
            throw stdgo.Go.toInterface((((((("bootstrap type wrong id: " : stdgo.GoString) + _got._name()?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _got._string()?.__copy__() : stdgo.GoString) + (" not " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _want._string()?.__copy__() : stdgo.GoString));
        };
    }
