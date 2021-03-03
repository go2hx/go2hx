package stdgo;
import haxe.rtti.Meta;
import haxe.ds.Vector;
import haxe.Rest;

@:forward
abstract GoArrayPointer<T>(GoArray<T>) {
    public function new(obj:GoArray<T>) {
        this = obj;
    }
    @:op([]) public inline function get(index:Int):T {
        return this.get(index);
    }
    @:op([]) public inline function set(index:Int,value:T):T {
        return this.set(index,value);
    }
}

abstract GoArray<T>(Vector<T>) {

    public var length(get,never):Int;
    private function get_length():Int {
        return this.length;
    }

    private function set_length(length:Int):Int {
        return 0;
    }

    public inline function iterator() {
        return new VectorIterator(this);
    }

    public inline function new(args:Rest<T>) {
        this = new Vector<T>(args.length);
        for (i in 0...args.length) {
            this.set(i,args[i]);
        }
    }
    public inline function setSize(length:Int) {
        this = new Vector<T>(length);
    }
    private inline function boundsCheck(i:Int) {
        #if (!no_check_bounds && !(java || jvm || python || cs)) //checked all targets except php for native bounds checking.
        if (i > this.length) {
            throw "array out of bounds, index: " + i + " length: " + length;
        }
        if (i < 0)
            throw "array negative index out of bounds";
        #end
    }
    @:op([]) public inline function get(index:Int):T {
        boundsCheck(index);
        return this.get(index);
    }
    @:op([]) public inline function set(index:Int,value:T):T {
        boundsCheck(index);
        return this.set(index,value);
    }
    public inline function slice(low:Int,high:Int=-1):Slice<T> {
        var pos = low;
        if (high == -1)
            high = length;
        var length = high - low;
        var slice = new Slice<T>();
        var array = new GoArray<T>();
        array.setVector(this);
        slice.setUnderlying(array,pos,length);
        return slice;
    }
    public inline function setVector(vector:Vector<T>) {
        this = vector;
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
        array.setSize(length);
        for (i in 0...array.length) {
            array.set(i,this.get(i));
        }
        return array;
    }
    public inline function typeName() {
        return "GoArray";
    }
}

class VectorKeyValueIterator<T> {
    var pos:Int = 0;
    var vector:Vector<T>;
    public inline function new(vector) {
        this.vector = vector;
    }
    public inline function hasNext() {
        return pos < vector.length;
    }
    public inline function next() {
        return {key: pos, value: vector.get(pos++)};
    }
}

class VectorIterator<T> {
    var pos:Int = 0;
    var vector:Vector<T>;
    public inline function new(vector) {
        this.vector = vector;
    }
    public inline function hasNext() {
        return pos < vector.length;
    }
    public inline function next() {
        return vector.get(pos++);
    }
}