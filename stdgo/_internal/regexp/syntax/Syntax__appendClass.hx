package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _appendClass(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _x[(_i : stdgo.GoInt)], _x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return _r;
    }
