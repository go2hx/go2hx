package stdgo.net.smtp;
class T_dataCloser_static_extension {
    static public function close(_d:T_dataCloser):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser>);
        return stdgo._internal.net.smtp.Smtp_T_dataCloser_static_extension.T_dataCloser_static_extension.close(_d);
    }
    public static function write(__self__:stdgo._internal.net.smtp.Smtp_T_dataCloser.T_dataCloser, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.smtp.Smtp_T_dataCloser_static_extension.T_dataCloser_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
