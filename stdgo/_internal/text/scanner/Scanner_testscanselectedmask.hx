package stdgo._internal.text.scanner;
function testScanSelectedMask(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.text.scanner.Scanner__testscanselectedmode._testScanSelectedMode(_t, (0u32 : stdgo.GoUInt), (0 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__testscanselectedmode._testScanSelectedMode(_t, (4u32 : stdgo.GoUInt), (-2 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__testscanselectedmode._testScanSelectedMode(_t, (32u32 : stdgo.GoUInt), (-5 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__testscanselectedmode._testScanSelectedMode(_t, (64u32 : stdgo.GoUInt), (-6 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__testscanselectedmode._testScanSelectedMode(_t, (512u32 : stdgo.GoUInt), (0 : stdgo.GoInt32));
        stdgo._internal.text.scanner.Scanner__testscanselectedmode._testScanSelectedMode(_t, (256u32 : stdgo.GoUInt), (-8 : stdgo.GoInt32));
    }
