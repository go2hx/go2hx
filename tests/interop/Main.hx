package;

import go4hx.tests.interop.Interop;
//import go4hx.tests.interop.colorful
import stdgo.encoding.binary.Binary;
import stdgo.crypto.Crypto;

function main() {
    Binary.appendVarint;
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
    i.run({s: ["Haxe"]});

    // Error (Interface) arg and return
    final err = Interop.error(stdgo.errors.Errors.new_("this is an error"));
    trace(err.error().toString());


    final i:go4hx.tests.interop.Interop.T_byteOrder = Interop.interfaceByteOrder(new ByteOrder());
    //trace(Reflect.fields(i));
    trace(i.appendUint16([0,1,2], 3));

    $type(i);

    Crypto.registerHash;
}


class ByteOrder {
    public function new() {}
    public function appendUint16(b:Array<Int>, c:Int):Array<Int> {
        trace(b,c);
        return b;
    }
}

class X {
    public function new() {}
    public function run(s:{s: Array<String>}) {
        trace("trigger! " + s);
    }
}