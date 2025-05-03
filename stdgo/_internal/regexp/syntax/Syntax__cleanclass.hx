package stdgo._internal.regexp.syntax;
function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>):stdgo.Slice<stdgo.GoInt32> {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1830"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((new stdgo._internal.regexp.syntax.Syntax_t_ranges.T_ranges(_rp) : stdgo._internal.regexp.syntax.Syntax_t_ranges.T_ranges)));
        var _r = (_rp : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1833"
        if (((_r.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1834"
            return _r;
        };
        var _w = (2 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1839"
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (_r.length) : Bool)) {
                var __0 = (_r[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = (_r[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
//"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1841"
                if ((_lo <= (_r[(_w - (1 : stdgo.GoInt) : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1843"
                    if ((_hi > _r[(_w - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                        _r[(_w - (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1846"
                    {
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        continue;
                    };
                };
_r[(_w : stdgo.GoInt)] = _lo;
_r[(_w + (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
_w = (_w + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1854"
        return (_r.__slice__(0, _w) : stdgo.Slice<stdgo.GoInt32>);
    }
