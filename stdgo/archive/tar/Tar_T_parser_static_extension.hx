package stdgo.archive.tar;
class T_parser_static_extension {
    static public function _parseOctal(_p:T_parser, _b:Array<std.UInt>):haxe.Int64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_parser.T_parser>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.archive.tar.Tar_T_parser_static_extension.T_parser_static_extension._parseOctal(_p, _b);
    }
    static public function _parseNumeric(_p:T_parser, _b:Array<std.UInt>):haxe.Int64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_parser.T_parser>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.archive.tar.Tar_T_parser_static_extension.T_parser_static_extension._parseNumeric(_p, _b);
    }
    static public function _parseString(_:T_parser, _b:Array<std.UInt>):String {
        final _ = (_ : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_parser.T_parser>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.archive.tar.Tar_T_parser_static_extension.T_parser_static_extension._parseString(_, _b);
    }
}
