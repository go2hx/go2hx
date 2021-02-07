package stdgo;
import haxe.rtti.Meta;
import haxe.ds.Vector;
import haxe.Rest;

abstract GoArray<T>(Vector<T>) {

    public var length(get,never):Int;
    private function get_length():Int {
        return this.length;
    }

    private function set_length(length:Int):Int {
        return 0;
    }

    public inline function new(length:Int=0) {
        this = new Vector<T>(length);
    }
    @:op([]) public inline function get(index:Int):T {
        return this.get(index);
    }
    @:op([]) public inline function set(index:Int,value:T):T {
        return this.set(index,value);
    }
    public inline function toArray():Array<T> {
        return [for (i in 0...length) this.get(i)];
    }
    public inline function toVector():Vector<T> {
        return this;
    }
    public inline function replace(value:Vector<T>) {
        this = value;
    }
    public function copy():GoArray<T> {
        var array = new GoArray<T>();
        return array;
    }
}