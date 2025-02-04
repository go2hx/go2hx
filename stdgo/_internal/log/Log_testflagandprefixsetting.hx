package stdgo._internal.log;
function testFlagAndPrefixSetting(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("Test:" : stdgo.GoString), (3 : stdgo.GoInt));
        var _f = (@:check2r _l.flags() : stdgo.GoInt);
        if (_f != ((3 : stdgo.GoInt))) {
            @:check2r _t.errorf(("Flags 1: expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(_f));
        };
        @:check2r _l.setFlags((_f | (4 : stdgo.GoInt) : stdgo.GoInt));
        _f = @:check2r _l.flags();
        if (_f != ((7 : stdgo.GoInt))) {
            @:check2r _t.errorf(("Flags 2: expected %x got %x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface(_f));
        };
        var _p = (@:check2r _l.prefix()?.__copy__() : stdgo.GoString);
        if (_p != (("Test:" : stdgo.GoString))) {
            @:check2r _t.errorf(("Prefix: expected \"Test:\" got %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
        };
        @:check2r _l.setPrefix(("Reality:" : stdgo.GoString));
        _p = @:check2r _l.prefix()?.__copy__();
        if (_p != (("Reality:" : stdgo.GoString))) {
            @:check2r _t.errorf(("Prefix: expected \"Reality:\" got %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
        };
        @:check2r _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
        var _pattern = (("^Reality:[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]\\.[0-9][0-9][0-9][0-9][0-9][0-9] hello\n" : stdgo.GoString) : stdgo.GoString);
        var __tmp__ = stdgo._internal.regexp.Regexp_match.match(_pattern?.__copy__(), @:check2 _b.bytes()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("pattern %q did not compile: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
        };
        if (!_matched) {
            @:check2r _t.error(stdgo.Go.toInterface(("message did not match pattern" : stdgo.GoString)));
        };
        @:check2 _b.reset();
        @:check2r _l.setFlags((0 : stdgo.GoInt));
        @:check2r _l.setPrefix(("\n" : stdgo.GoString));
        @:check2r _l.output((0 : stdgo.GoInt), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        {
            var _got = ((@:check2 _b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("\n" : stdgo.GoString))) {
                @:check2r _t.errorf(("message mismatch:\ngot  %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("\n" : stdgo.GoString)));
            };
        };
    }
