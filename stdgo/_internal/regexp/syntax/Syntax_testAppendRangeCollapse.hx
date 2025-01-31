package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i = ((65 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (90 : stdgo.GoInt32) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, _i, _i);
_r = stdgo._internal.regexp.syntax.Syntax__appendRange._appendRange(_r, ((_i + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32), ((_i + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32));
                _i++;
            };
        };
        if ((_r : stdgo.GoString) != (("AZaz" : stdgo.GoString))) {
            @:check2r _t.errorf(("appendRange interlaced A-Z a-z = %s, want AZaz" : stdgo.GoString), stdgo.Go.toInterface((_r : stdgo.GoString)));
        };
    }
