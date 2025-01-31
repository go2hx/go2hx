package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function testFoldConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _last = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (1114111 : stdgo.GoInt32) : Bool)) {
                if (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_i) == (_i)) {
                    {
                        _i++;
                        continue;
                    };
                };
if (((_last == (-1 : stdgo.GoInt32)) && ((65 : stdgo.GoInt32) != _i) : Bool)) {
                    @:check2r _t.errorf(("minFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((65 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
_last = _i;
                _i++;
            };
        };
        if ((125251 : stdgo.GoInt32) != (_last)) {
            @:check2r _t.errorf(("maxFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((125251 : stdgo.GoInt)), stdgo.Go.toInterface(_last));
        };
    }
