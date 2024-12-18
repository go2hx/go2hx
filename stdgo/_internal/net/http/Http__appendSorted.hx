package stdgo._internal.net.http;
function _appendSorted(_es:stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>, _e:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry):stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry> {
        var _n = (_es.length : stdgo.GoInt);
        var _i = (stdgo._internal.sort.Sort_search.search(_n, function(_i:stdgo.GoInt):Bool {
            return ((_es[(_i : stdgo.GoInt)]._pattern.length) < (_e._pattern.length) : Bool);
        }) : stdgo.GoInt);
        if (_i == (_n)) {
            return (_es.__append__(_e?.__copy__()));
        };
        _es = (_es.__append__((new stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry() : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry)));
        (_es.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>).__copyTo__((_es.__slice__(_i) : stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>));
        _es[(_i : stdgo.GoInt)] = _e?.__copy__();
        return _es;
    }
