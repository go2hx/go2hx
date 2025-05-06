package stdgo._internal.go.types;
function _maketl(_s:stdgo.GoString):stdgo._internal.go.types.Types_t_termlist.T_termlist {
        _s = stdgo._internal.strings.Strings_replaceall.replaceAll(_s?.__copy__(), (" " : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__();
        var _names = stdgo._internal.strings.Strings_split.split(_s?.__copy__(), ("|" : stdgo.GoString));
        var _r = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>>((_names.length : stdgo.GoInt).toBasic(), 0) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L19"
        for (_i => _n in _names) {
            _r[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types__testterm._testTerm(_n?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/termlist_test.go#L22"
        return _r;
    }
