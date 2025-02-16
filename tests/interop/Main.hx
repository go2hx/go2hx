package;

import tests.interop.Interop;

function main() {
    // float32 arg and return
    final value = Interop.float32(10);
    $type(value);
    if (value != 10)
        throw "incorrect value";
    final t = std.Type.typeof(value).getName();
    trace(t);
    if (t != "TInt")
        throw "incorrect type";

    // Map<Int,Int> arg and return
    final m = [0 => 1, 1 => 2];
    final value = Interop.map_(m);
    $type(value);
    if (value.get(0) != 1)
        throw "incorrect value";
    trace(t);
    if (t != "TInt")
        throw "incorrect type";

    // Interface arg and return
    final i = Interop.interface_(new X());
    i.run("Haxe");

    // Error (Interface) arg and return
    final err = Interop.error(stdgo.errors.Errors.new_("this is an error"));
    trace(err.error().toString());
}

class X {
    public function new() {}
    public function run(s:String) {
        trace("trigger! " + s);
    }
}