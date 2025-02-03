package stdgo.testing;
class T_filterMatch_static_extension {
    static public function _verify(t:stdgo._internal.testing.Testing_T_filterMatch.T_filterMatch, _name:String, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _matchString = _matchString;
        return stdgo._internal.testing.Testing_T_filterMatch_static_extension.T_filterMatch_static_extension._verify(t, _name, _matchString);
    }
    static public function _matches(t:stdgo._internal.testing.Testing_T_filterMatch.T_filterMatch, _name:Array<String>, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):stdgo.Tuple<Bool, Bool> {
        final _name = ([for (i in _name) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _matchString = _matchString;
        return {
            final obj = stdgo._internal.testing.Testing_T_filterMatch_static_extension.T_filterMatch_static_extension._matches(t, _name, _matchString);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
