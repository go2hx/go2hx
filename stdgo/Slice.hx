package stdgo;
import haxe.Rest;
import haxe.ds.Vector;
import stdgo.GoArray;
@:forward
abstract Slice<T>(ArrayData<T>) {
    public function new(args:Rest<T>) {
        this = new ArrayData(args.length);
        for (i in 0...args.length) {
            this.vector[i] = args[i];
        }
    }
    @:op([]) inline function get(index:Int):T {
        return this.vector[index];
    }
    @:op([]) inline function set(index:Int,value:T):T {
        return this.vector[index] = value;
    }
    public function slice(low:Int,high:Int=0):Slice<T> {
        if (high == 0)
            high = this.length;
        return new Slice<T>(...[for (i in low...high) get(i)]);
    }
    public function copy():Slice<T> {
        var slice = new Slice<T>();
        slice.vector = this.vector.copy();
        return slice;
    }
}