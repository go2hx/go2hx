package stdgo.testing;
class T_chattyPrinter_static_extension {
    static public function printf(_p:T_chattyPrinter, _testName:String, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter>);
        final _testName = (_testName : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_T_chattyPrinter_static_extension.T_chattyPrinter_static_extension.printf(_p, _testName, _format, ...[for (i in _args) i]);
    }
    static public function updatef(_p:T_chattyPrinter, _testName:String, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter>);
        final _testName = (_testName : stdgo.GoString);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.testing.Testing_T_chattyPrinter_static_extension.T_chattyPrinter_static_extension.updatef(_p, _testName, _format, ...[for (i in _args) i]);
    }
    static public function _prefix(_p:T_chattyPrinter):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter>);
        return stdgo._internal.testing.Testing_T_chattyPrinter_static_extension.T_chattyPrinter_static_extension._prefix(_p);
    }
}
