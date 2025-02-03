package stdgo.text.template;
class ErrorWriter_static_extension {
    static public function write(_e:ErrorWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.template.Template_ErrorWriter_static_extension.ErrorWriter_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
