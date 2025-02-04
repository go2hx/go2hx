package stdgo._internal.encoding.json;
function _parseTag(_tag:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions; } {
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_tag?.__copy__(), ("," : stdgo.GoString)), _tag:stdgo.GoString = __tmp__._0, _opt:stdgo.GoString = __tmp__._1, __4:Bool = __tmp__._2;
        return { _0 : _tag?.__copy__(), _1 : (_opt : stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions) };
    }
