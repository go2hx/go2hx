package stdgo._internal.html.template;
function _attrType(_name:stdgo.GoString):stdgo._internal.html.template.Template_t_contenttype.T_contentType {
        //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L141"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("data-" : stdgo.GoString))) {
            _name = (_name.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_name?.__copy__(), (":" : stdgo.GoString)), _prefix:stdgo.GoString = __tmp__._0, _short:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L147"
                if (_prefix == (("xmlns" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L148"
                    return (6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
                };
                _name = _short?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L153"
        {
            var __tmp__ = (stdgo._internal.html.template.Template__attrtypemap._attrTypeMap != null && stdgo._internal.html.template.Template__attrtypemap._attrTypeMap.__exists__(_name?.__copy__()) ? { _0 : stdgo._internal.html.template.Template__attrtypemap._attrTypeMap[_name?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoUInt8) : stdgo._internal.html.template.Template_t_contenttype.T_contentType), _1 : false }), _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L154"
                return _t;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L157"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("on" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L158"
            return (4 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L169"
        if (((stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("src" : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("uri" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("url" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L172"
            return (6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/attr.go#L174"
        return (0 : stdgo._internal.html.template.Template_t_contenttype.T_contentType);
    }
