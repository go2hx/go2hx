package _internal.flag_test;
import stdgo._internal.flag.Flag;
function testPrintDefaults(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("print defaults test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _fs.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
        _fs.bool_(("A" : stdgo.GoString), false, ("for bootstrapping, allow \'any\' type" : stdgo.GoString));
        _fs.bool_(("Alongflagname" : stdgo.GoString), false, ("disable bounds checking" : stdgo.GoString));
        _fs.bool_(("C" : stdgo.GoString), true, ("a boolean defaulting to true" : stdgo.GoString));
        _fs.string(("D" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("set relative `path` for local imports" : stdgo.GoString));
        _fs.string(("E" : stdgo.GoString), ("0" : stdgo.GoString), ("issue 23543" : stdgo.GoString));
        _fs.float64(("F" : stdgo.GoString), (2.7 : stdgo.GoFloat64), ("a non-zero `number`" : stdgo.GoString));
        _fs.float64(("G" : stdgo.GoString), (0 : stdgo.GoFloat64), ("a float that defaults to zero" : stdgo.GoString));
        _fs.string(("M" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("a multiline\nhelp\nstring" : stdgo.GoString));
        _fs.int_(("N" : stdgo.GoString), (27 : stdgo.GoInt), ("a non-zero int" : stdgo.GoString));
        _fs.bool_(("O" : stdgo.GoString), true, ("a flag\nmultiline help string" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : _internal.flag_test.Flag_test_T_flagVar.T_flagVar)) : stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar>)), ("V" : stdgo.GoString), ("a `list` of strings" : stdgo.GoString));
        _fs.int_(("Z" : stdgo.GoString), (0 : stdgo.GoInt), ("an int that defaults to zero" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker(true, stdgo.Go.str()?.__copy__()) : _internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker)) : stdgo.Ref<_internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker>)), ("ZP0" : stdgo.GoString), ("a flag whose String method panics when it is zero" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker(true, ("something" : stdgo.GoString)) : _internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker)) : stdgo.Ref<_internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker>)), ("ZP1" : stdgo.GoString), ("a flag whose String method panics when it is zero" : stdgo.GoString));
        _fs.duration(("maxT" : stdgo.GoString), (0i64 : stdgo._internal.time.Time_Duration.Duration), ("set `timeout` for dial" : stdgo.GoString));
        _fs.printDefaults();
        var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString))) {
            _t.errorf(("got:\n%q\nwant:\n%q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString)));
        };
    }
