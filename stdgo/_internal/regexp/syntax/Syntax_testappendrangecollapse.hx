package stdgo._internal.regexp.syntax;
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i = ((65 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (90 : stdgo.GoInt32) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _i, _i);
_r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, ((_i + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32), ((_i + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32));
                _i++;
            };
        };
        if ((_r : stdgo.GoString) != (("AZaz" : stdgo.GoString))) {
            @:check2r _t.errorf(("appendRange interlaced A-Z a-z = %s, want AZaz" : stdgo.GoString), stdgo.Go.toInterface((_r : stdgo.GoString)));
        };
    }
