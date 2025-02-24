package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.T_errorWriter_asInterface) class T_errorWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _e:stdgo._internal.encoding.csv.Csv_t_errorwriter.T_errorWriter, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo._internal.encoding.csv.Csv_t_errorwriter.T_errorWriter = _e?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("Test" : stdgo.GoString)) };
    }
}
