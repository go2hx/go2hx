package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testBuilder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), stdgo.Go.str()?.__copy__());
        var __tmp__ = _b.writeString(("hello" : stdgo.GoString)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_n != (5 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("hello" : stdgo.GoString));
        {
            _err = _b.writeByte((32 : stdgo.GoUInt8));
            if (_err != null) {
                _t.errorf(("WriteByte: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("hello " : stdgo.GoString));
        {
            var __tmp__ = _b.writeString(("world" : stdgo.GoString));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_err != null) || (_n != (5 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("WriteString: got %d,%s; want 5,nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _internal.strings_test.Strings_test__check._check(_t, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), ("hello world" : stdgo.GoString));
    }
