package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReadLineNonNilLineOrError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("line 1\n" : stdgo.GoString))));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = _r.readLine(), _l:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (((_l != null) && (_err != null) : Bool)) {
                    _t.fatalf(("on line %d/2; ReadLine=%#v, %v; want non-nil line or Error, but not both" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
