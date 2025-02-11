package stdgo._internal.html.template;
function isTrue(_val:stdgo.AnyInterface):{ var _0 : Bool; var _1 : Bool; } {
        var _truth = false, _ok = false;
        return {
            final __tmp__ = stdgo._internal.text.template.Template_istrue.isTrue(_val);
            _truth = __tmp__._0;
            _ok = __tmp__._1;
            { _0 : _truth, _1 : _ok };
        };
    }
