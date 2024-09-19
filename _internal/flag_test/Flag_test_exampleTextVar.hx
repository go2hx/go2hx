package _internal.flag_test;
import stdgo._internal.flag.Flag;
function exampleTextVar():Void {
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("ExampleTextVar" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
        var _ip:stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
        _fs.textVar(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net_IP.IP>)), ("ip" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.Net_ipv4.ipv4((192 : stdgo.GoUInt8), (168 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (100 : stdgo.GoUInt8))), ("`IP address` to parse" : stdgo.GoString));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("127.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt_printf.printf(("{ip: %v}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)));
        _ip = null;
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("256.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt_printf.printf(("{ip: %v}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)));
    }
