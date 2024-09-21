package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _presentInMap(_s:stdgo.GoString, _a:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_a.length) : Bool), _i++, {
                var _loc = (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _a[(_i : stdgo.GoInt)]?.__copy__()) : stdgo.GoInt);
                if ((_loc < (0 : stdgo.GoInt) : Bool)) {
                    _t.errorf(("map print: expected to find %q in %q" : stdgo.GoString), stdgo.Go.toInterface(_a[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s));
                };
                _loc = (_loc + ((_a[(_i : stdgo.GoInt)].length)) : stdgo.GoInt);
                if (((_loc >= (_s.length) : Bool) || (((_s[(_loc : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) && (_s[(_loc : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _t.errorf(("map print: %q not properly terminated in %q" : stdgo.GoString), stdgo.Go.toInterface(_a[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s));
                };
            });
        };
    }
