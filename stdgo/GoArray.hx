package stdgo;
import haxe.rtti.Meta;
import haxe.ds.Vector;
import haxe.Rest;

@:forward 
abstract GoArray<T>(ArrayData<T>) {
    public inline function new() {
        trace("length: " + Meta.getType(ArrayData).length);
        var length = 10;
        this = new ArrayData(length,length);
    }
    @:op([]) inline function get(index:Int):T {
        return this.vector[index];
    }
    @:op([]) inline function set(index:Int,value:T):T {
        return this.vector[index] = value;
    }
    public function copy():GoArray<T> {
        var array = new GoArray<T>();
        array.vector = this.vector.copy();
        return array;
    }
}


@:generic
class ArrayData<T> {
    public var vector:Vector<T>;
    public var cap:Int = 0;
    public var length(get, null):Int;
    
    function get_length():Int {
        return vector.length;
    }
    public function new(length:Int,cap:Int=0) {
        this.cap = length;
        vector = new Vector<T>(this.cap);
    }
    public function resize(increase:Int):ArrayData<T> {
        var tmp = new Vector<T>(length + increase);
        Vector.blit(vector,0,tmp,0,vector.length);
        vector = tmp;
        return this;
    }
    public function toArray():Array<T> {
        return [for (i in 0...length) vector[i]];
    }
    public function toVector():Vector<T> {
        return vector;
    }
    public function iterator() {
        return vector.toArray().iterator();
    }
    public function toString() {
        return vector.toArray().toString();
    }
}