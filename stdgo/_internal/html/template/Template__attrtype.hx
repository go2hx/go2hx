package stdgo._internal.html.template;
function _attrType(_name:stdgo.GoString):stdgo._internal.html.template.Template_t_contenttype.T_contentType {
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("data-" : stdgo.GoString))) {
            _name = (_name.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_name?.__copy__(), (":" : stdgo.GoString)), _prefix:stdgo.GoString = __tmp__._0, _short:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                if (_prefix == (("xmlns" : stdgo.GoString))) {
                    return (6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
                };
                _name = _short?.__copy__();
            };
        };
        {
            var __tmp__ = (stdgo._internal.html.template.Template__attrtypemap._attrTypeMap != null && stdgo._internal.html.template.Template__attrtypemap._attrTypeMap.__exists__(_name?.__copy__()) ? { _0 : stdgo._internal.html.template.Template__attrtypemap._attrTypeMap[_name?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_contenttype.T_contentType), _1 : false }), _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _t;
            };
        };
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("on" : stdgo.GoString))) {
            return (4 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
        };
        if (((stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("src" : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("uri" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("url" : stdgo.GoString)) : Bool)) {
            return (6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
        };
        return (0 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
    }
